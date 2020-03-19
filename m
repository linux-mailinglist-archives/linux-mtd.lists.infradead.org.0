Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EDD18C134
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Mar 2020 21:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCUZIl/ptJDlWCSvMoXuUCEQDupZ48XOYua/C6cU/Xk=; b=F9pcyHOLPQCKLO
	cCkd0PCaFuRfRCXDwHY7jbA1eHvET9uQXLVf4CUODVKD646x6EHcXhEsc6XGYZzI9l0rKaKHfZtsv
	DPuyn1LHprpvKHwCsrHkGuSHIVEl23RtynmDuTzTnmSqYQicGa2yYvxxVtEO4W09CJpnmizNaEuzE
	Q2M/yhwXX9tNJpOXScmZTyr3nDX7Wo6cKh/+4m3KtjY754RFCe2zUdgzAocM22O5tKfnMqDeU9SVE
	mqcuIw76Sz+za1T5akkHu7p5nuTF+few1wv1aDu5/+c6rissijgZluFvkfqMvPv2ugHtrhd/hMF6q
	BMvbLUyHKF4Qwl/eSmSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1dw-0005PN-0M; Thu, 19 Mar 2020 20:19:52 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1df-0005LD-SI
 for linux-mtd@lists.infradead.org; Thu, 19 Mar 2020 20:19:37 +0000
Received: from callcc.thunk.org (pool-72-93-95-157.bstnma.fios.verizon.net
 [72.93.95.157]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 02JKJWmb024512
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Mar 2020 16:19:33 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id C46BC420EBA; Thu, 19 Mar 2020 16:19:32 -0400 (EDT)
Date: Thu, 19 Mar 2020 16:19:32 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH 2/4] ext4: wire up FS_IOC_GET_ENCRYPTION_NONCE
Message-ID: <20200319201932.GE1067245@mit.edu>
References: <20200314205052.93294-1-ebiggers@kernel.org>
 <20200314205052.93294-3-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314205052.93294-3-ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_131936_103259_65A5F9F9 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-api@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 01:50:50PM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> This new ioctl retrieves a file's encryption nonce, which is useful for
> testing.  See the corresponding fs/crypto/ patch for more details.
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Reviewed-by: Theodore Ts'o <tytso@mit.edu>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AE6ABB65
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Sep 2019 16:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2n0aahqwFp1bwxZ4eb9KL5wbzYycEbradWIXKPl0BU=; b=naSwbgrfLzEvd/
	G2bwML807AVp2Uun9l3DNymZqYIMZpnaERa8Q8US6cCWMX0rhAsEXz6qfRFEwQjH9BpU9iitPOHDh
	OnyVcIwimp+s0jcv2yxy5mTZkbq1HCzu+EmW/gwKFUmDFzqNe3rPruPsIoUfnYsUA7om4F8nkE9w5
	m/SviXX06hOAmEV7CHG2JIVqm6HqvOTO/eHeDnrp18FVtoRsvkDY6E7JBUhkdaIlp9AAYZ3H/bHaH
	v86wILF9t45rwevEBczg/zX4XNEC1IvNg2AXDhi5gTVg2qhwbMSoFSd8Jf6n6u7JzxPsN3pU1Pdfg
	n3atMJxVawIvlBdZc24w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FbD-0007ca-CT; Fri, 06 Sep 2019 14:52:31 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Faw-0007bk-Ln
 for linux-mtd@lists.infradead.org; Fri, 06 Sep 2019 14:52:15 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id AB9EE97D;
 Fri,  6 Sep 2019 14:52:13 +0000 (UTC)
Date: Fri, 6 Sep 2019 08:52:12 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] docs: mtd: Update spi nor reference driver
Message-ID: <20190906085212.79ec917c@lwn.net>
In-Reply-To: <1565107583-68506-1-git-send-email-john.garry@huawei.com>
References: <1565107583-68506-1-git-send-email-john.garry@huawei.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_075214_718044_F75EE234 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mchehab+samsung@kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019 00:06:23 +0800
John Garry <john.garry@huawei.com> wrote:

> The reference driver no longer exists since commit 50f1242c6742 ("mtd:
> fsl-quadspi: Remove the driver as it was replaced by spi-fsl-qspi.c").
> 
> Update reference to spi-fsl-qspi.c driver.
> 
> Signed-off-by: John Garry <john.garry@huawei.com>

So this appears to have languished for a month...applied now, sorry for
the delay.

Thanks,

jon

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

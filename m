Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9786A27264
	for <lists+linux-mtd@lfdr.de>; Thu, 23 May 2019 00:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UWEEkTpswqXVSQopGrrXR4ekDYYpkaNXePMlfH7hn5A=; b=azgSwEwsBgjtsS0JmrGUDV5fe
	fwaOl3Ypi4K6nPAKLx8cadNmLV0IdckiSZJjXNEjzaA7JOv6uKbfT8s3QiEExb5VBZqbbMYsxhKUg
	xq99jrVQYBiMJ4c58iEcIH4ZGB6MxvYxtuh1J/vdliw1UsZsX1NIzJqEtADQ2cLE6C8dhjbtNyms+
	t9Kp1c0k/mT/pdZGHTdiVxniFEhBaojI6gAP8MsjAJPLg7mDjQhofyJbAmCkL57owjHMWeBcTKFc4
	N1rNYRWPlEDmWaDwcgRQ9GN5CX1iRvNBR2V/F8Y218y6kPPXzLD82mCDi2CoLjOVer0eJ8BayQCnv
	JQq511F/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTZrZ-0007Hb-Vg; Wed, 22 May 2019 22:37:33 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTZrS-0007HG-OX
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 22:37:28 +0000
Received: from JKLETSKY-MBP15.local (184-23-191-3.vpn.dynamic.sonic.net
 [184.23.191.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 7483B3CB49;
 Wed, 22 May 2019 15:36:55 -0700 (PDT)
Subject: Re: [PATCH v3 3/3] mtd: spinand: Add support for GigaDevice
 GD5F1GQ4UFxxG
To: linux-mtd@lists.infradead.org
References: <20190520194454.32175-1-lede@allycomm.com>
 <20190520194454.32175-4-lede@allycomm.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <51a11a30-4c0d-145d-5058-582862e27ce2@allycomm.com>
Date: Wed, 22 May 2019 15:36:55 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520194454.32175-4-lede@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_153726_948373_6C4BC119 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Superseded by v4
https://patchwork.ozlabs.org/project/linux-mtd/list/?series=109337

which

Addresses changes in macros and related data structures introduced by
   commit 377e517b5fa5
       mtd: nand: Add max_bad_eraseblocks_per_lun info to memorg

Resolves issue detected by kbuild test robot
   Tue, 21 May 2019 17:28:09 +0800
   Tue, 21 May 2019 18:17:28 +0800


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

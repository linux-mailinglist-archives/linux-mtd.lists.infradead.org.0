Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AAF197609
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Mar 2020 09:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryAbnCzKceq2xrls7y4r7nXHakhj2seSfevJa+HWyzM=; b=k2uw9uyGuoOc1k
	mLhNJDDjGFQfuPEY1No2EtjuUe1bWv3zfBIBmqnOA/vxltEMmh8DTm/zZKcbtAOhr1x9Aos4FJqD+
	Qu55CPt34tCdr/I0EV9DCXR7EuQNxpD+A6Edm53NXUxouYl7EK1wcOngYIamB9W6NHxGq4lMi4w03
	PHoorcJtVBPMk6Stg4+N+TrmvL0kx9+rECG2OdRQx0b9JKEAURKIIop5TmGZcuEwxZ2JJMW7VBjIN
	cwfflUOLWy/oSiVdJjp5hYYGNRH7Eoddk8jJ9deAg24XmTrVg7caTKRfnK51dnwQkUX4q4TgYfIu5
	GFPpYeS0cZeAHjS2Fy3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIpGO-0003jU-Jj; Mon, 30 Mar 2020 07:55:16 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIpG6-0003il-Eb
 for linux-mtd@lists.infradead.org; Mon, 30 Mar 2020 07:54:59 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 5A96B20000C;
 Mon, 30 Mar 2020 07:54:55 +0000 (UTC)
Date: Mon, 30 Mar 2020 09:54:54 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaoming Ni <nixiaoming@huawei.com>
Subject: Re: [PATCH] mtd:clear cache_state to avoid writing to bad clocks
 repeatedly
Message-ID: <20200330095454.66297f84@xps13>
In-Reply-To: <1585400477-65705-1-git-send-email-nixiaoming@huawei.com>
References: <1585400477-65705-1-git-send-email-nixiaoming@huawei.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_005458_625524_F4B27B39 
X-CRM114-Status: UNSURE (   4.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: wangle6@huawei.com, vigneshr@ti.com, richard@nod.at,
 zhangweimin12@huawei.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, houtao1@huawei.com, yebin10@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgWGlhb21pbmcsCgpYaWFvbWluZyBOaSA8bml4aWFvbWluZ0BodWF3ZWkuY29tPiB3cm90ZSBv
biBTYXQsIDI4IE1hciAyMDIwIDIxOjAxOjE3CiswODAwOgoKUGxlYXNlIGFsc28gZml4IHRoZSB0
aXRsZS4KCgkibXRkOiBjbGVhciAuLi4iCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbXRkLwo=

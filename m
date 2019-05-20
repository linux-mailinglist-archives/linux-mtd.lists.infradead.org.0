Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D74E2418D
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 21:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sQTWLS6AdHoO9q+Pj2T82ARFfOJs9F/kEdSFOWR8lMI=; b=cJMTsA5igk4PR2JKw6AwVaMGK
	37I2uCXqjgxOy8ny96B4XzZne3MN5Lkngm/oytqDsDHU2735D5S+0mX4qb5/ySd8JYE8GoN0CGsYX
	7vMx38u8Zs7oXo27dQH7rMbTs8Br3eDdu/uT0qdUY55WHO9C8IKRVmDC1v61/xoZaPMghgaJkUfoW
	PJ1im1lRZdwdAeq5rN43lGkNqaxCZyqoClZZH3LgoJb9LsQYphiSOnuHPO5vIXQLN26QWHAO6p9eL
	QdpbCOzkcf+e+CWsUQlc2TTmKK/B/J/OPQCIiLvMt2hPWBswQVV7iA/FmeURcRfNIU9U1rkKiLddM
	ZF3aNwM0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoME-0006qt-TW; Mon, 20 May 2019 19:54:02 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoM2-0006jN-D3
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 19:53:53 +0000
Received: from JKLETSKY-MBP15.local (184-23-191-215.vpn.dynamic.sonic.net
 [184.23.191.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 65AE03BCE2;
 Mon, 20 May 2019 12:53:49 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] mtd: spinand: Add support for GigaDevice
 GD5F1GQ4UFxxG
To: linux-mtd@lists.infradead.org
References: <20190514215315.19228-1-lede@allycomm.com>
 <20190514215315.19228-4-lede@allycomm.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <ef6d5586-b211-544a-2178-8636a5b949a8@allycomm.com>
Date: Mon, 20 May 2019 12:53:49 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514215315.19228-4-lede@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_125350_767807_9CFDEB8C 
X-CRM114-Status: UNSURE (   8.89  )
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

This series, https://patchwork.ozlabs.org/project/linux-mtd/list/?series=107874

superseded by https://patchwork.ozlabs.org/project/linux-mtd/list/?series=108868

mtd: spinand: Add support for GigaDevice GD5F1GQ4UFxxG  <https://patchwork.ozlabs.org/project/linux-mtd/list/?series=108868>

and marked as "superseded" in Patchwork

Jeff


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

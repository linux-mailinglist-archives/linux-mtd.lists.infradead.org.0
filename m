Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D186D113C0A
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Dec 2019 07:59:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PJQ7dVLzG6ELQoRIy3AvH3AVsUUAM4gUzbF3ufGYCVc=; b=Ysxrg3ZdJxi2Yu
	CvvaQyRKhkt9jge1REbnpDuVJqQ8RUefgg2TZiWgk+3YeHTvoAt9EWacHYJZxY/sKiH06rEBHFsJ7
	VmAR3m216f8687MN1ShhGbYfIHXLFx1IWx0iWOGOENgFDY7VlmVrfj5utzFzxvFpBYNLuNUKDP+rd
	mLPxwTvxtAT53PJ1os+wd3dvj6CSnx47okfDmpUJi+IPyipIdtKGILarog9G6aegnLZEIT5HtNfTs
	IwXix4H8Y1pq+pwywp4anjEly1lT0CCmM8gZqPmvH4dqmXkbK5rM9tL3D3EHJaMbsZvbgcalhJSUE
	XpqaZvljxi2WjGin+BKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icl70-0004RR-Hd; Thu, 05 Dec 2019 06:59:42 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icl6o-0004Q5-Kr
 for linux-mtd@lists.infradead.org; Thu, 05 Dec 2019 06:59:31 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB56xEEd078510;
 Thu, 5 Dec 2019 00:59:14 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575529154;
 bh=p7gKLubv7D204H8MsVlcocPH5+pDPFuPXIUfcGx0XSk=;
 h=From:To:CC:Subject:Date;
 b=LM3f7r6hylhzrnrI05MmtDcqws04GznHzrHjxnUNxrTO0zu0NJaXlIizJlcR7DH3c
 sL9jEVl54DxTy+djw8Ik4StgJ3F/eK6sEBjx/sRvKIs3E8Hnwa9xe3OM9eAiE7wMW6
 csJld+IPEv24sItW3hYfUVGwFj/KBz/jge5w0PlY=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB56xEBV006110
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 5 Dec 2019 00:59:14 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 5 Dec
 2019 00:59:14 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 5 Dec 2019 00:59:14 -0600
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB56xBT1097002; 
 Thu, 5 Dec 2019 00:59:12 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 0/3] mtd: spi-nor: Update mt25q/n25q entries
Date: Thu, 5 Dec 2019 12:29:32 +0530
Message-ID: <20191205065935.5727-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_225930_768132_0EDCC982 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 Ashish Kumar <Ashish.Kumar@nxp.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

First patch splits n25q512a and mt25qu512a into two as they are
different devices. Second patch adds support for more mt25q devices and
last patch adds USE_FSR flag for n25q entries where missing.

Tested with mt25qu512a flash

Vignesh Raghavendra (3):
  mtd: spi-nor: Split mt25qu512a (n25q512a) entry into two
  mtd: spi-nor: Add entries for mt25q variants
  mtd: spi-nor: Add USE_FSR flag for n25q* entries

 drivers/mtd/spi-nor/spi-nor.c | 31 +++++++++++++++++++++++--------
 1 file changed, 23 insertions(+), 8 deletions(-)

-- 
2.24.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

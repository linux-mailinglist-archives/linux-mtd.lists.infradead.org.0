Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDD71CF39F
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 13:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9NU8YSadTPfU7NJBFRxr+nsdxqSS6wHhm0VcIutsZE0=; b=UvOw1oMai3g8jQ
	kv6eqSbGFc4zwEQ+QycLpzci3AhcfNm0eqEuVVQCtqIH8X7gG6+KJSlt42JUsdTULvjshyKOwTCFT
	UcJgldHyFaVhAjDqeLs+l5+Ppm89KmzDHe9WR/xJ6Flwcz2NyjQmCW8BxXduiYEDjCOUGO9xJahGF
	uuLyx4w53Pu/14XZxQuXIr8u/drU8/NYm/PIBH1+wfWH0srJ74oPADsFS4ArjVTd+CoRENQHd6s/6
	3zgjO0VucJTZ9GGVkdykjy9jBPW22aGJRSJYH+B02k/RomPUhuiZi2DbJ35yR8xFdOQhYta0VEL48
	pNHbPY3xHm3hziFE/yag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTOp-0007D5-HF; Tue, 12 May 2020 11:48:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTOh-0007CM-J9
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 11:48:33 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04CBmA5T021217; Tue, 12 May 2020 13:48:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=D3pNqSIt8oGGo+ly3QButpe43l6v+9Np/M1AzLOvJCI=;
 b=M/W12HfS1hio1seh0PZLywV5bMNlbMxml6KwapJMqZmTDmQp06gXG9mC8T7ZaaV9Y5d9
 8bVSySBO1L0JN9KxGaxL1t9c8WluBbt5ypxEazZeAAbs54Mcift4KNJhYZlcz9XmAe98
 +cW/ZOKWG1VrCwWSbrIWk7iZGNgnUa1iMc37hyEixJdW98xAqkt36aKrM5eSUtikCJkL
 W4PwWmg8XxhQekfC7turFxWEd7xFTLkq6KFvcbw4EAbOh5LLQ8IlW7FzdtS1Ld5g0xJG
 jzeilpvjEyIiO0ROM3kpytRP/B4fmWYyknxAZoXc1lvktahMbYzf4YaECuXT0b0/L1ge Zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30wj9wg9mh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 May 2020 13:48:26 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 409CE10002A;
 Tue, 12 May 2020 13:48:23 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2D6802AC5B9;
 Tue, 12 May 2020 13:48:23 +0200 (CEST)
Received: from localhost (10.75.127.48) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 12 May 2020 13:48:22 +0200
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>
Subject: [PATCH v5 0/2] mtd: rawnand: stm32_fmc2: rebase cosmetic change on
 top of nand/next
Date: Tue, 12 May 2020 13:47:46 +0200
Message-ID: <1589284068-4079-1-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-12_03:2020-05-11,
 2020-05-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_044831_993048_DA68C1F3 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Kerello <christophe.kerello@st.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This set of patches is a rebase of the patches that were not applied
on nand/next.

Changes in v5:
 - rebase on top of nand/next

Changes in v3:
 - add Miquel reviewed-by tag

Christophe Kerello (2):
  mtd: rawnand: stm32_fmc2: cosmetic change to use nfc instead of    
    fmc2 where relevant
  mtd: rawnand: stm32_fmc2: use FIELD_PREP/FIELD_GET macros

 drivers/mtd/nand/raw/stm32_fmc2_nand.c | 987 ++++++++++++++++-----------------
 1 file changed, 488 insertions(+), 499 deletions(-)

-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

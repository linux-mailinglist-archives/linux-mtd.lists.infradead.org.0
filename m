Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3343A8E66A
	for <lists+linux-mtd@lfdr.de>; Thu, 15 Aug 2019 10:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9JwvITkM1QYxzPfhbEBUzbenuJUcPyf2cwS3vGlfgDs=; b=EeNlQYpZ5fGLsO
	fHj7xezHay7rBjwg29CQriyU6PFnRH2sPHRDaoG8HXlvIOGd0mYGk2SJR83jPzqXNxwZ+ctcKu/L1
	RWxAwM9Wu5aTxDCl8Ca5ViNe2sBNsmAX30I50dH4VQtg24R2S4Tr0XGxpM8E90fhq1aNQO/P8crif
	PjOaWj3slgI6AQZNVX2zRqx5PYyWpb2GOP1ji/OYID4iP51YYeEHResly4OpNWrJppFs3HAy9XMhc
	TI+7kJsmoRmAmoor+Jyjr99qAcEWpGCwcUUuvN7nk2CjBWkB07fWXWfacYTyfxoJGnFjHsBkjUNU5
	0uCu62Lp3QETawXrVYRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBCU-0000ru-Fw; Thu, 15 Aug 2019 08:33:38 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBCJ-0000rR-5A
 for linux-mtd@lists.infradead.org; Thu, 15 Aug 2019 08:33:28 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7F8TBMW192936;
 Thu, 15 Aug 2019 08:33:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=Ku/slL0evPif+gGN65O6ZwTkTbjV+oqsHgcc2enXXAg=;
 b=QCuaY7yxvQTKIGRQiPXWy1WqPVB7I6zg5DBOBYo1qisAe5Ohw5MpPCNsOeZx4XbJxdQ/
 FL7OLwSdAb+PTzNods+LehnfqKy4zSRrUoK4A2eq7+9r6ig9jrRfnN61JLifZOSNC+8W
 8UeJ5OwhEhehAJTuLGjTKRxOkAZqxEWdjwSbR/XIP80ir+srtBzgnrTu2D0e7AkLpOUX
 mZ520YGrMe6zoBA2Jz4v/U92y22Cn5oF9knGHhhMEWlmPBLPPVoiO0l6ztDHeVJpi3FP
 QXv5fDbBBbBicFHQbnrTsIL9GD8PZ5a54pkzvBgs0ube3x8L+KDRdLK8wJPCpULJteCk 6A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2u9pjqsg4m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 15 Aug 2019 08:33:04 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7F8Wk0u041808;
 Thu, 15 Aug 2019 08:33:04 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2ucpys56v0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 15 Aug 2019 08:33:03 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7F8Wxsc011577;
 Thu, 15 Aug 2019 08:33:01 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 15 Aug 2019 01:32:59 -0700
Date: Thu, 15 Aug 2019 11:32:52 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marek Vasut <marek.vasut@gmail.com>,
 Cyrille Pitchen <cyrille.pitchen@microchip.com>
Subject: [PATCH] mtd: spi-nor: Fix an error code in spi_nor_read_raw()
Message-ID: <20190815083252.GD27238@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9349
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908150091
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9349
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908150090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_013327_281334_BB934435 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, kernel-janitors@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The problem is that if "ret" is negative then when we check if
"ret > len", that condition is going to be true because of type
promotion.  So this patch re-orders the code to check for negatives
first and preserve those error codes.

Fixes: f384b352cbf0 ("mtd: spi-nor: parse Serial Flash Discoverable Parameters (SFDP) tables")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 63af87609bac..986b0754495d 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2903,10 +2903,10 @@ static int spi_nor_read_raw(struct spi_nor *nor, u32 addr, size_t len, u8 *buf)
 
 	while (len) {
 		ret = spi_nor_read_data(nor, addr, len, buf);
-		if (!ret || ret > len)
-			return -EIO;
 		if (ret < 0)
 			return ret;
+		if (!ret || ret > len)
+			return -EIO;
 
 		buf += ret;
 		addr += ret;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

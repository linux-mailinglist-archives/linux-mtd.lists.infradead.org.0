Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD231733E1
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 10:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RLZeity5VfXPUT1qFY0cO/xXBrd6O6OmK18wQSM1BkQ=; b=MkVpLVhrWdODqz
	BIpgk4OQZLVwytsLGvzD1ZBp5fEZsgKFroZJfT0ZpIR+USFv+vY1qwu3UEp6Iso4XH/h3CRvvX936
	FHSvRs6lCPQsyVnmj4vDfdURFUZ5ZSbMou3KZ3N/acTICVJKcEafSqIH6obb5vg1KK/qPqQwE3NjW
	uXW2UhBE6QMqmlRXFaMsrGHelKhda0g3FxUCxby/DoYqfSrIKFRvwDpIsRFi1Ev7qhyLZF+LIgQDI
	yxXh1FWN8NSedReD80lEU0TyaysmQmDg46aU+vdu7f4zKo+u+7JjR73mAfj1Sq2XUY0KNqQVU+vg4
	dnWGgxFOj/Kyyuy7SzzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7bus-0004U9-Qb; Fri, 28 Feb 2020 09:26:42 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7bum-0004Te-05
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 09:26:37 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01S9Nd6U166792;
 Fri, 28 Feb 2020 09:26:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=BgE7e76OAsM76E773cYCtt5gIptVj/9ZnbDmpmCngSg=;
 b=czBFUcnnnRih4i/NdeFLBti5j9kBbp50xkp00TI2027KYZtwtTkfsvEoY6qUc5mIt9Dn
 9qFwCy63r1bqtwS5vhKe3aqp0RnHC+3wIJX4k6oYVPGinBX24Tr0MMnguaODwVay8T1U
 rX9XJ47v3/qd4n7E4N5c8aurGUlwG4SaxuQdfTGeFKv2ggyeZ4ajhfi3eFBKhqYH/peD
 mHWM5peTLyAEKNpqOdF0v6TNCM8uRI/NsOwfUaGguGC4B86WkBkmxeUBSopgtujmmbtZ
 WbOyGsR08d5wWtHyQSn8H3JTYDJZSOkLzsYu92/cNrPuw7HvaJ+DCR+XifadrcQDhRJa pQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2ydcsnsnjm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Feb 2020 09:26:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01S9MRBb049900;
 Fri, 28 Feb 2020 09:26:13 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2ydj4q8msq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Feb 2020 09:26:13 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01S9Q61B014426;
 Fri, 28 Feb 2020 09:26:07 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 28 Feb 2020 01:26:05 -0800
Date: Fri, 28 Feb 2020 12:25:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Alexey Korolev <akorolev@infradead.org>
Subject: [PATCH] mtd: lpddr: Fix a double free in probe()
Message-ID: <20200228092554.o57igp3nqhyvf66t@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9544
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 suspectscore=2
 spamscore=0 adultscore=0 malwarescore=0 mlxlogscore=871 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002280078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9544
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0 bulkscore=0
 lowpriorityscore=0 mlxlogscore=931 phishscore=0 spamscore=0 adultscore=0
 suspectscore=2 impostorscore=0 clxscore=1011 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002280078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_012636_129697_F2638158 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 David Woodhouse <David.Woodhouse@intel.com>,
 Richard Weinberger <richard@nod.at>, kernel-janitors@vger.kernel.org,
 linux-mtd@lists.infradead.org, Steve Winslow <swinslow@gmail.com>,
 Allison Randal <allison@lohutok.net>, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This function is only called from lpddr_probe().  We free "lpddr" both
here and in the caller, so it's a double free.  The best place to free
"lpddr" is in lpddr_probe() so let's delete this one.

Fixes: 8dc004395d5e ("[MTD] LPDDR qinfo probing.")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/mtd/lpddr/lpddr_cmds.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mtd/lpddr/lpddr_cmds.c b/drivers/mtd/lpddr/lpddr_cmds.c
index 1efc643c9871..9341a8a592e8 100644
--- a/drivers/mtd/lpddr/lpddr_cmds.c
+++ b/drivers/mtd/lpddr/lpddr_cmds.c
@@ -68,7 +68,6 @@ struct mtd_info *lpddr_cmdset(struct map_info *map)
 	shared = kmalloc_array(lpddr->numchips, sizeof(struct flchip_shared),
 						GFP_KERNEL);
 	if (!shared) {
-		kfree(lpddr);
 		kfree(mtd);
 		return NULL;
 	}
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

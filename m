Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC382E4694
	for <lists+linux-mtd@lfdr.de>; Fri, 25 Oct 2019 11:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rNRBFlGC0ozokt5VGiIxuMFTzidv0CWcrYcRRJCy0Q8=; b=dsxR4ejvTdySvi
	56Lvh12e95yYlDVX2PKM8Bx+ugGHZc1ZzvuxcCBDvYmQbFkVHBMmOJI2x5OEaYm5RaaUoPlv5whiS
	+Y0w5mloAA4/bRDiRAouTqZq1o34KFLzzLYBO/RaWHNSGRSOdZ4bmICRODV8UPjpPrsa649HZbc99
	xzVJGxZQToSsr3UF0M6HrUp0TMBEpQqKkHWFUxZu6sZH1EJK1aCKvxAKbhPZ2yy4XcucoCB4X1tQj
	0SR9TRAYm2HCAWyKRAD+NMz8YwBsRGJoyR9uZgROfu5v3szr3uliNONSHBvJl6h0Lmw+6ttkXctC2
	YQu80aAEvZcpFJFgHQXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvVM-00063U-QL; Fri, 25 Oct 2019 09:03:32 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvVD-00062r-RF
 for linux-mtd@lists.infradead.org; Fri, 25 Oct 2019 09:03:25 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9P8x1Lk132068;
 Fri, 25 Oct 2019 09:03:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=5v+5kI0KSNxp0VqQK20qcgFo8cBlvt8NcV2ObM56s/M=;
 b=VFtjUbOa68tYeGR6ctuYLfkZ0KTfGHNfn2x4JMnh+YUJQT4SKLckKixilzblENLAP5mT
 RkNXrCjnjTymis6YRmE4DJwj1EKvWouCaksknR6ZYRoAGLsaFfGzrdJpco1a/W5VIa91
 zU49BdM9GVdYp25KvW8WcInOy0nneTID/6hDSrxCwxNLqNwdZFzE2kV8Lx7nX4yi4+Cv
 TI2XrA5V+eDMfRJbOQnl7vqsMzkp7weDyWlBR+rFssPBaVQElER49rPFoFSeX4UhZSqO
 jq+O1hALbMn+63ClPJZuON7tJmGk9k48OTZjhCwtpykKEIq/AncKhdQ8CcAH2hKEyOyS RA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2vqswu1pyf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 25 Oct 2019 09:03:18 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9P92l60098785;
 Fri, 25 Oct 2019 09:03:18 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2vunbkvwu4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 25 Oct 2019 09:03:17 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9P93FKs005067;
 Fri, 25 Oct 2019 09:03:16 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 25 Oct 2019 02:03:14 -0700
Date: Fri, 25 Oct 2019 12:03:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: tudor.ambarus@microchip.com
Subject: [bug report] mtd: spi-nor: Introduce 'struct spi_nor_controller_ops'
Message-ID: <20191025090309.GA7304@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9420
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=1 spamscore=0 mlxscore=0 mlxlogscore=503
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910250086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9420
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=1 spamscore=0 clxscore=1011
 lowpriorityscore=1 mlxscore=0 impostorscore=0 mlxlogscore=584 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910250085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_020324_022748_C26FB2F4 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello Tudor Ambarus,

This is a semi-automatic email about new static checker warnings.

The patch 453977875364: "mtd: spi-nor: Introduce 'struct
spi_nor_controller_ops'" from Sep 24, 2019, leads to the following
Smatch complaint:

    drivers/mtd/spi-nor/spi-nor.c:967 spi_nor_erase_sector()
    error: we previously assumed 'nor->controller_ops' could be null (see line 945)

drivers/mtd/spi-nor/spi-nor.c
   944	
   945		if (nor->controller_ops && nor->controller_ops->erase)
                    ^^^^^^^^^^^^^^^^^^^
Can this really be NULL?  Probably this check can be removed...

   946			return nor->controller_ops->erase(nor, addr);
   947	
   948		if (nor->spimem) {
   949			struct spi_mem_op op =
   950				SPI_MEM_OP(SPI_MEM_OP_CMD(nor->erase_opcode, 1),
   951					   SPI_MEM_OP_ADDR(nor->addr_width, addr, 1),
   952					   SPI_MEM_OP_NO_DUMMY,
   953					   SPI_MEM_OP_NO_DATA);
   954	
   955			return spi_mem_exec_op(nor->spimem, &op);
   956		}
   957	
   958		/*
   959		 * Default implementation, if driver doesn't have a specialized HW
   960		 * control
   961		 */
   962		for (i = nor->addr_width - 1; i >= 0; i--) {
   963			nor->bouncebuf[i] = addr & 0xff;
   964			addr >>= 8;
   965		}
   966	
   967		return nor->controller_ops->write_reg(nor, nor->erase_opcode,
                       ^^^^^^^^^^^^^^^^^^^^^
The patch adds a new unchecked dereference.

   968						      nor->bouncebuf, nor->addr_width);
   969	}

regards,
dan carpenter

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

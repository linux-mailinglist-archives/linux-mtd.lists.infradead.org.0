Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54246BC1BD
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Sep 2019 08:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N6KXwVqKU5Mi23RrBur+CfBCcV44o8jZfKbF/wmNvSc=; b=WQm/C/vDz6Ejnm
	xTtIW4lsuEoHZhU0sZONK86cvPqoLKXSshGwCrL50iVwNTQP7g1ebsfWs7Ii8HrHLkF9+MIF6v0cj
	kW+wYmVvcXMf9A7wz64kazXm8hSZSJOCzO11Jlh2fMeGEacMAbOuDAqFYw+x6XQhp7dOIOGBE6fbc
	6l4/tV31SFeY4wITR6m1/RSVt0Ip4Zmn4OrzuYNxQC/HvqmwO5JIs0UaFIfnTW2tOyJMBELyT6JxL
	OEc9Khrlm1Y8+Y16yL9tkyao39lE3j85vXF8WGg+GRfKRxbVsthGKh8Y9t+1U+2MrUyRF+yq//YZX
	F+ZohC7YDU4FUqKANDnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCeKd-0005es-Gc; Tue, 24 Sep 2019 06:29:51 +0000
Received: from wehq.winbond.com ([202.39.229.15])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCeKV-0005eW-Kf
 for linux-mtd@lists.infradead.org; Tue, 24 Sep 2019 06:29:45 +0000
Received: from mail.winbond.com (wectims01.winbond.com [10.6.10.125])
 by wehq.winbond.com (Postfix) with ESMTP id 4FD4E34243B
 for <linux-mtd@lists.infradead.org>; Tue, 24 Sep 2019 14:29:30 +0800 (CST)
From: Shih-Ting Lin <STLin2@winbond.com>
To: linux-mtd <linux-mtd@lists.infradead.org>
Subject: mtd: spi-nor: add Winbond 1.8v SPI NOR Flash ID
Thread-Topic: mtd: spi-nor: add Winbond 1.8v SPI NOR Flash ID
Thread-Index: AdVyoUIsIXICm4YbQLSFvWAC5QhO0A==
Date: Tue, 24 Sep 2019 06:29:24 +0000
Message-ID: <8d3caeee2d7840eb86904f4a2f20be4a@wectmlbox04.winbond.com.tw>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [49.215.195.228]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_232943_812761_4EDC5104 
X-CRM114-Status: UNSURE (   4.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Winbond SPI NOR Flash have new product for 1.8V production line.
Following is the patch add new device ID and part number information in spi-nor.c file.

Signed-off-by: Shih-Ting Lin <stlin2@winbond.com>

>  { "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  { "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
>  SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
> +{ "w25q32jwxxIM", INFO(0xef8016, 0, 64 * 1024,  64,
> +SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> +SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
> +},
> +{ "w25q64jwxxIM", INFO(0xef8017, 0, 64 * 1024, 128,
> +SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> +SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
> +},
> +{ "w25q128jwxxIM", INFO(0xef8018, 0, 64 * 1024, 256,
> +SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> +SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
> +},
> +{ "w25q256jwxxIM", INFO(0xef8019, 0, 64 * 1024, 512,
> +SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> +SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
> +},

TEST=rebuild kernel,update to DUT
    check DUT:
    cat /var/log/messages | grep mtk-nor
    ---
    localhost ~ # cat /var/log/messages | grep mtk-nor
    2019-07-08T04:42:51.636356-07:00 INFO kernel: [0.301351] mtk-nor \
    1100d000.spi:w25q32jw (4096 Kbytes)


________________________________

The privileged confidential information contained in this email is intended for use only by the addressees as indicated by the original sender of this email. If you are not the addressee indicated in this email or are not responsible for delivery of the email to such a person, please kindly reply to the sender indicating this fact and delete all copies of it from your computer and network server immediately. Your cooperation is highly appreciated. It is advised that any unauthorized use of confidential information of Winbond is strictly prohibited; and any information in this email irrelevant to the official business of Winbond shall be deemed as neither given nor endorsed by Winbond.
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

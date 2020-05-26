Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA4A1D0A1D
	for <lists+linux-mtd@lfdr.de>; Wed, 13 May 2020 09:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4dheckjvjPvmADaFmbukmfRObqsZEZ215fyhJ+PwBis=; b=BWbwdESHvptC1fX6P7iNeXLV+
	34gb6jvRQIixPBOBNdCSumR8RHHLDCmoMaS6UEfEt6+3V7/+b4FpzgtJ8UNEM4oBxO8pALObe+t4C
	XBPHKZBWmxgYAPJIFCNQpJd9G1iF1CUdlR9+013gsWyANoH8074dspNcO402us36WS+RsXY9yrAfx
	n+S3iNZ1dZ2DRltWGBZJ1PWIIPiAKsfJUbtxeUVnYYTR8nm5VVYY/AAa1BBxDgDb0QKYQkNXKoBxg
	jdCM9CU7WdeSVa2atstOknX7R0hrHOlYPF7NxHeTd1H+S2Z+CrLdXfTeuRaFvNUCNEXnOEJu51FB6
	5Ef4Diu7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYm7s-0003a8-CC; Wed, 13 May 2020 07:48:24 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYm7j-0003XZ-Sl
 for linux-mtd@lists.infradead.org; Wed, 13 May 2020 07:48:17 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04D7gM6P020537; Wed, 13 May 2020 09:48:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=o2GlfIa4tSRtdzMlNfs23WPlWh8hMZK60G1IB9KaQq4=;
 b=LXTUb/0zwNKJ/l6VVqMD2HmXGANJnaZ/3AsFYC78BpxN3Lr+WSDb8uvW3qmxYyBNft29
 dol+6gqt0oddc2BP0yTy0POmpondiKMdWL4vIx+TnvfcYycePrrqEUYfo7fqTLd2IE1y
 6WlCSz5WCWrd75tarnVDYfFFezduS03iBnB2F+PslPFWRbgp2lOrhWiRu4fNlyAcNqpe
 Y446jYhE//rJWDuJiENBoBykM9U+2WDqst+wMtgLpe/MUV2zojpH+YCpCi0l5zui2LGJ
 T1RPDS+fGuQxXtrc4YRS0OnXi/dSIUw6arj5JEXj/Uui36yLOIky2KSu8UpeT2odQ+w/ lg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vqb84x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 09:48:11 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 92BB6100034;
 Wed, 13 May 2020 09:48:10 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7E9992AC5A2;
 Wed, 13 May 2020 09:48:10 +0200 (CEST)
Received: from [10.211.4.184] (10.75.127.48) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 13 May
 2020 09:48:08 +0200
Subject: Re: [PATCH 52/62] mtd: rawnand: stm32_fmc2: Stop using nand_release()
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Tudor Ambarus
 <Tudor.Ambarus@microchip.com>, <linux-mtd@lists.infradead.org>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
 <20200510121220.18042-53-miquel.raynal@bootlin.com>
From: Christophe Kerello <christophe.kerello@st.com>
Message-ID: <b1715a60-c678-7135-f6c5-5dff6b94f533@st.com>
Date: Wed, 13 May 2020 09:48:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200510121220.18042-53-miquel.raynal@bootlin.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-13_02:2020-05-11,
 2020-05-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_004816_293452_0A99C4D0 
X-CRM114-Status: GOOD (  12.25  )
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel,

On 5/10/20 2:12 PM, Miquel Raynal wrote:
> This helper is not very useful and very often people get confused:
> they use nand_release() instead of nand_cleanup().
> 
> Let's stop using nand_release() by calling mtd_device_unregister() and
> nand_cleanup() directly.
> 
> Signed-off-by: Miquel Raynal<miquel.raynal@bootlin.com>
> ---

Reviewed-by: Christophe Kerello <christophe.kerello@st.com>

Regards,
Christophe Kerello.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

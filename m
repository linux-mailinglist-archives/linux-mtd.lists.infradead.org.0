Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5D21DB60A
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 16:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TiS6fobDi885L5ohcla/Y4gzzY2wGVitHxXbWnjA3Vc=; b=L0P8bAEyMNJKSF
	LcxmFsU9IApZqduXgHzgweXw5EGKko4gKun/WHgdlDtn5snmCI52fBWbWc7pjCi+plmsHtErqbsCt
	yoH1m8+V8OXABFM6fPNlEIPjAz2EvYqUx9FGhs3KgcUTZCFxWZsfgnAVN/dfw9Z+/+dBBn6XA/lFg
	TNiEVoHA0oGlp76UgBsCPQVJ/KpT4PlErnV5StaoT5CBpKC6XFa5KrrRibK2ngBB1cM+LVMzXthao
	U9RexJuiDhxymxbfiMK6fiNCVsZT8dy4QrX0p0/NV6DQddwC5dCef15QdX8TpLkDBSVkM3ivvGh8n
	05CYnXkFRqHPNSfF5sCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPWv-00043g-7i; Wed, 20 May 2020 14:17:09 +0000
Received: from smtp2.axis.com ([195.60.68.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPWn-00042u-8n
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 14:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=1757; q=dns/txt; s=axis-central1;
 t=1589984221; x=1621520221;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mGUnhlcvSDhLczcbbc1+shx6jBHWllwKa5ZdSW2oFoQ=;
 b=MFnQ9VwD3uy2qk3T+Sv3UZGuXGED3hw/EIQDd9nruXJ+P81BnqwekMVH
 w3f/GOOTsLIQaI68qVSvwSUDfgmybAg7h1WiZ3+75zjCdpCLDwtCetfoi
 Y8Mk2eHTfrGVtubj4HTvopEXzlFHGeqLhvI4Ugo/cHLYZx09uL0vb42S4
 nsKSCRehOmbxhuOy6GEfZP+6a7oZoSbkLdPq13zFW5bO0aSR3y3fJGJNC
 gv2lZPhk4ESj8wciJYeJa2lg8ub+KuwcYkbfwnvwmXazpZV8fRhhzMFhu
 vJ/sOLakUi3m6yKWdDu5VTR/KjyFoB9uASgVS7lDAN8MEXnRFtxG2dJfM w==;
IronPort-SDR: Hns3VTq1XMMx3FlWvLC0ZJAew2vSjYPXetC+cZpZ/zMCvjVQKyAsDdBbAdTsFs0bBVXOLNfrjA
 rM5tQCHsXlqugxBdkWVpSJwPsD11dm6hugti8jSG7o2T/di/KTC2cUXoSsHEEIhXvwxnoe2FyV
 ZW3h7gNZpUM5zemTZE7PVqqfnuHcHH59dUFIgCTRm+eBBAAxXfvaKciMrJUEQZ7LdLWLEzTSAP
 FFAqRtBlVHAychKn2QWZLglaM7NfLZgtrAFo1vXKfLu/gNIewIjhOrhb/rycAdDRBHnmXF3xFG
 IfM=
X-IronPort-AV: E=Sophos;i="5.73,414,1583190000"; 
   d="scan'208";a="8679561"
From: Rickard X Andersson <Rickard.Andersson@axis.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: SV: [PATCH 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4
Thread-Topic: [PATCH 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4
Thread-Index: AQHWLqsSzDPRS0hiIEqCKjujGCWzMKiw2n2AgAAlfmg=
Date: Wed, 20 May 2020 14:16:57 +0000
Message-ID: <1589984216684.8771@axis.com>
References: <1589981533129.2663@axis.com>,<20200520154343.2ce58cc6@xps13>
In-Reply-To: <20200520154343.2ce58cc6@xps13>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_071701_651562_EEC65A3A 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, Boris
 Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

> > I have created a new patchset that I will send shortly. This patchset does however not use onfi_find_equivalent_sdr_mode(..), that could be a future improvment. My patchset falls back to mode 0 if the specialized timings does not work for the controller.
>
> Thanks for updating!
>
> Actually I wrote it because of a previous discussion with Boris who
> told me that this mode field would be badly understood and he actually
> got it right as in your previous submission this field was set to 0
> while, IIRC, you told me it was close to mode 3. This is important to
> controllers that cannot tweak the parameters but just pick an ONFI
> mode. So the timings they choose must fit the slowest mins and fastest
> maxs of your new set of timings. Hence the use of the helper which
> seems needed. It is actually pretty straightforward so I don't
> understand your choice of not making use of it?
>
> As this is the primary contribution of this type, I would like to get
> it right so that other contributors can refer to it :)

If I understand you correctly you want me to use onfi_find_equivalent_sdr_mode in order to find the corresponding onfi mode. Then you want me to use onfi_fill_data_interface and loop towards mode 0 checking which mode the controller accepts? I just thought it was a "messy" to duplicate this code in all vendor drivers.
Or do you mean that I should just use onfi_find_equivalent_sdr_mode to set ."timings.mode" and let nand_base to do the looping in case error is returned from th58nvg2s3hbai4_choose_data_interface (i.e specialized timings not accepted by the controller).

Thanks,
Rickard
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

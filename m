Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F90E1411F3
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 20:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hnxeh0C624TwUYwAi4a02E8HVdQ4DzLitLJg6tSV/Q=; b=Vv+sgSQrfGkJbh
	W5odymUf8SW3Sn5/EeqUL7S6DaeeWlavLl/XXoywcqvrKbTQ1c7RgZqM09mPprkdzbE0zmbrE5rdc
	epJaYJYmvwq/gGcXg0aPKtmXkrZp9SvT/Oeiy/KN1yW58r+8u9rAsr90ve+UzqaP2xmqSj7rVSf6W
	mD/A7+OGvLOaNOkPxjZJ1mPtiT/aTZ7ljDHipyTyiOQ7K4bgXkz85qyM4oTE5Q3jLmwwykGa7q9ol
	KYm1BGj4Y7+JlPVZtCoA1OOzEdE82VN9qu8gZoFCU2dK0CAnQvJMD1jNp8WApUEv/eW9V5b0jc90S
	Hi+a5Zh3RNa2sbdKDv8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isXbg-0002RS-H0; Fri, 17 Jan 2020 19:48:36 +0000
Received: from mailrelay4-2.pub.mailoutpod1-cph3.one.com ([46.30.212.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isXbX-0002Qx-Ak
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 19:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=haabendal.dk; s=20191106;
 h=content-type:mime-version:message-id:in-reply-to:date:references:subject:cc:
 to:from:from; bh=HiOTrvAV1yAo4CF3znlfKtymTP4NkmMANat1y2Eu0do=;
 b=wgvFc4dtK3vDe11eyuXJFuK6YU2V4Gb7bXD/rw/aRCyDF7zcFEoMkRIl2nR9qp06beS+xQu0Yey7+
 kwuXpxqAJMA4jTH/nMkMhoE5Vav5xwtdYuEHT3qXPSBZIQ3tTff5EiXMLkCn1cu3kutHYLWSnq7p5v
 nJ0yA6whRidYEm6Zdpczrdku5LJkLYrhlOkhRixjBtyi5TsY6D/yW3l1qhkHuHm976iRIrn07c1Bfn
 7fs2B/RCxBrdhO36Vi4XIEL+LgPRx5uM51M7dVk0xrzqJjaKjmnWwSNhlZ8jLcBcwbLtY9PkCncfk8
 yCqvL8qUNoxgpxgAGTJKI4Elljc732g==
X-HalOne-Cookie: f27a4b6d659b2a8cefbd360981683fd54d12ad72
X-HalOne-ID: 4fca45e6-3962-11ea-92a7-d0431ea8bb10
Received: from localhost (unknown [87.49.44.45])
 by mailrelay4.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 4fca45e6-3962-11ea-92a7-d0431ea8bb10;
 Fri, 17 Jan 2020 19:48:20 +0000 (UTC)
From: Esben Haabendal <esben@haabendal.dk>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 1/2] mtd: rawnand: gpmi: Fix suspend/resume problem
References: <20200102130826.170647-1-esben@geanix.com>
 <20200115074622.cn7eh6k3mtn6tze3@pengutronix.de>
 <20200115094638.1847f475@xps13>
Date: Fri, 17 Jan 2020 20:48:19 +0100
In-Reply-To: <20200115094638.1847f475@xps13> (Miquel Raynal's message of "Wed, 
 15 Jan 2020 09:46:38 +0100")
Message-ID: <871rrxx3ss.fsf@haabendal.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_114827_922899_FFD8E4F7 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.30.212.3 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>, sean@geanix.com,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 martin@geanix.com, Han Xu <han.xu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Miquel Raynal <miquel.raynal@bootlin.com> writes:

> Hi Esben,
>
> Sascha Hauer <s.hauer@pengutronix.de> wrote on Wed, 15 Jan 2020
> 08:46:22 +0100:
>
>> Hi Esben,
>> 
>> On Thu, Jan 02, 2020 at 02:08:25PM +0100, Esben Haabendal wrote:
>> > On system resume, the gpmi clock must be enabled before accessing gpmi
>> > block.  Without this, resume causes something like
>> > 
>> > [  661.348790] gpmi_reset_block(5cbb0f7e): module reset timeout
>> > [  661.348889] gpmi-nand 1806000.gpmi-nand: Error setting GPMI : -110
>> > [  661.348928] PM: dpm_run_callback(): platform_pm_resume+0x0/0x44 returns -110
>> > [  661.348961] PM: Device 1806000.gpmi-nand failed to resume: error -110
>> > 
>> > Signed-off-by: Esben Haabendal <esben@geanix.com>
>> > ---
>> >  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 6 ++++++
>> >  1 file changed, 6 insertions(+)
>> > 
>> > diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
>> > index 334fe3130285..7ac8c8b95afc 100644
>> > --- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
>> > +++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
>> > @@ -148,6 +148,10 @@ static int gpmi_init(struct gpmi_nand_data *this)
>> >  	struct resources *r = &this->resources;
>> >  	int ret;
>> >  
>> > +	ret = pm_runtime_get_sync(this->dev);
>> > +	if (ret < 0)
>> > +		return ret;  
>> 
>> This increases the devices usage counter...
>
> I'm dropping the two patches for now, please resend with this fixed and
> the Fixes/Cc:stable tags added.
>
> I'll freeze the PR at the end of the week.

I will send out revised patches tonight.

/Esben

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

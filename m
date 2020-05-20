Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E551DB820
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 17:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTVgiyivFQaRkV5qVvWe/sIIcBqZIAsYAiNwnv0wDGo=; b=UwQeA2OcB5bCKD
	vzXztTUsYRHbpRubX3KtNKCqmbJl+N845UbltPbeIp4JHYctuwrUoCF9TVu3icJHaFhKbUaQixQw/
	7AIpwL69LLL6e4iVXbsJwdKY47ZCYeXa2kD+nU2PWiqXBFBmDd2JvUD55M9gGtol072PTVgOTBs4Q
	WFJFOSp2lVtTDhEuRg6JggNQCv47sUKd/XGpi/InUkSWFGHs+2W2jwEC6yZRm399zRwjPgeaz42tZ
	60AXms7Q04QBN1ML9LUwxWZJgvYA1jq7ADlrD8emWC+fzu//whVMImWhQqKZJ2hYE5yB8x+cPG4BY
	5XjQZBIBZOB5t6qCSe3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQcd-0006fv-4m; Wed, 20 May 2020 15:27:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQcU-0006f3-Jb
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 15:27:00 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2B01B2A2C69;
 Wed, 20 May 2020 16:26:56 +0100 (BST)
Date: Wed, 20 May 2020 17:26:52 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4
Message-ID: <20200520172652.051b9d90@collabora.com>
In-Reply-To: <20200520171246.538823eb@xps13>
References: <1589981533129.2663@axis.com> <20200520154343.2ce58cc6@xps13>
 <1589984216684.8771@axis.com> <20200520162936.6eb499fb@xps13>
 <1589985750394.77181@axis.com>
 <20200520165022.1e241604@collabora.com>
 <20200520171246.538823eb@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_082658_773838_6CFC0CB2 
X-CRM114-Status: GOOD (  26.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Rickard X Andersson <Rickard.Andersson@axis.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 17:12:46 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 20 May
> 2020 16:50:22 +0200:
> 
> > On Wed, 20 May 2020 14:42:31 +0000
> > Rickard X Andersson <Rickard.Andersson@axis.com> wrote:
> >   
> > > > > If I understand you correctly you want me to use onfi_find_equivalent_sdr_mode in order to find the corresponding onfi mode. Then you want me to use onfi_fill_data_interface and loop towards mode 0 checking which mode the controller accepts? I just thought it was a "messy" to duplicate this code in all vendor drivers.
> > > > > Or do you mean that I should just use onfi_find_equivalent_sdr_mode to set ."timings.mode" and let nand_base to do the looping in case error is returned from th58nvg2s3hbai4_choose_data_interface (i.e specialized timings not accepted by the controller).      
> > > >
> > > > Sorry for the misunderstanding. What I think you should try is:
> > > > 1/ call onfi_find_equivalent_sdr_mode() to set the timings.mode field.
> > > > 2/ call nand_controller_supports_data_interface()
> > > > 3/ if the controller supports the timings, set
> > > > chip->default_timing_mode accordingly and return 0.    
> > 
> > Why do we have to set the default_timing_mode field? Can't we just set
> > timings.mode directly?
> >   
> > > > 4/ if the controller does not support the timings, you may want to
> > > > propose other standard timings to test by setting
> > > > chip->default_timing_mode anyway but returning an error which means
> > > > "best interface has not been found yet" so the rest of the
> > > > choose_data_interface() helper will try the remaining ONFI modes
> > > > automatically (fallbacks to 0 anyway).    
> > 
> > Again, I don't see why setting chip->default_timing_mode is needed here,
> > and I'm not sure trying remaining ONFI modes is useful, I guess we can
> > just fall back on mode 0 in that case.  
> 
> It is needed because of the logic in nand_reset() which does not apply
> the data interface after a reset if this field is null.

We should probably replace that check by a memcmp():

	if (!memcmp(&chip->data_interface, saved_data_intf,
		    sizeof(saved_data_intf)))
		return 0;

And maybe we should allocate this struct instead of copying things
around (have a "default/reset timings" object that's shared by all
drivers and matches timing mode 0, and a "best timing" object that's
allocated at init time).

> 
> Otherwise I also wondered if falling back to regular ONFI mode was
> useful. If this is not, we can just return after the call to
> chip->ops.choose_data_interface().

Or maybe we could expose this logic as a helper:

static int
nand_choose_best_sdr_timings(struct nand_chip *,
			     struct nand_sdr_timings *best_timings)
{
	/*
	 * 1/ pick the closest mode and assign best_timings->mode
	 *    using onfi_find_equivalent_sdr_mode()
	 * 2/ call controller->setup_data_interface(check_only, best_timings);
	 * 3/ pick timings of best_timings->mode - 1 if it fails and go back to
	 *    #2, return 0 otherwise.
	 */
}

This way the driver doesn't have to duplicate the logic, it only has
to fill the best_timings struct accordingly, and the core can simply
do:

	if (chip->ops.choose_data_interface)
		return chip->ops.choose_data_interface();

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

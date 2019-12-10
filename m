Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414AB119F5D
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Dec 2019 00:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rRQ3LetfOJdp1mowI2UIQMH0zHQRxSW/GvCzg4APYC8=; b=p0tQuY+UeaX8rH
	d46aTdKAizvh84jwl7OcTILAiZxTUU6aGezXf8aquPEJw7dZx4+Ib17pLwse1xwHVYc5Iw5E1p+qM
	K9ownFYqkEFOnVQvfcWl42zOfTk0llHsVuCcHR/9HTS9hoFsLjWVrP+18AWZe0DQbbL9bOE0+5/Ec
	Ff6CUtymO9WIWjS/rM/z7meN3EkaHa4l0Pc8o7SO3a3bNFVfdHVblsVlX8FIflKMyE8ppaVnr+NTB
	YhEaaZz52bd6QeoE+wxSVn3u4eAnymqul4RBGg+rIjcoHvERxCGDUI4sjPk1DlaH1JGwXkHTZM/Qa
	jApCpf8f3NH488XYdvvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieosy-00083m-0o; Tue, 10 Dec 2019 23:25:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieosq-000830-FF
 for linux-mtd@lists.infradead.org; Tue, 10 Dec 2019 23:25:38 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEC0B20663;
 Tue, 10 Dec 2019 23:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576020332;
 bh=ZFu4Hwm9TXqLd33Z1de6lnSizTJgOLyN8HGrecf9HLY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=X4udzvXQ7snjmIabgtXdmw+W789EOtzVGrt2DaBfrBK0qaF4Wr94f9MMFJh+3xzvx
 +qQ8ecyou8iYR2vXOI5MxMI+Ryr8L3bTtQ83PA7j8M6JolUcxsGbNtz120G2bswz+g
 meHCfapKZI2D3fn5ZQLjpvlegaqmwITN38H8if4A=
Date: Tue, 10 Dec 2019 17:25:29 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 6/6] (v3) drivers: hwmon: i5k_amb: simplify probing /
 device identification
Message-ID: <20191210232529.GA171629@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bee7ba11-6b4a-1cc7-ee8c-ddf17cb8daca@roeck-us.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_152536_550476_2F95C2EF 
X-CRM114-Status: GOOD (  23.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: linux-hwmon@vger.kernel.org, jdelvare@suse.com, vigneshr@ti.com,
 richard@nod.at, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 rrichter@marvell.com, james.morse@arm.com, linux-crypto@vger.kernel.org,
 miquel.raynal@bootlin.com, linux-mtd@lists.infradead.org,
 linux-edac@vger.kernel.org, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, tim@buttersideup.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 06:21:31AM -0800, Guenter Roeck wrote:
> On 11/28/19 4:54 AM, Enrico Weigelt, metux IT consult wrote:
> > Simpilify the probing by putting all chip-specific data directly
> > into the pci match table, removing the redundant chipset_ids table.
> > 
> > Changes v3:
> >      * use pci_get_device_by_id() introduces by a previous patch
> >        of this queue
> > 
> > Changes v2:
> >      * use PCI_DEVICE_DATA() macro in the pci match table
> >      * directly pass the pci device id to i5k_channel_probe(),
> >        instead of computing it internally by extra offset parameter
> > 
> > Submitted: 2019-06-06
> > Signed-off-by: Enrico Weigelt <info@metux.net>
> 
> I don't immediately see how this is better. I am not even sure if it
> is correct.

I don't mind this, but:

  1) I don't maintain this file, so my opinion doesn't count much.

  2) I despise the pci_get_device() interfaces because they're
  inefficient, not hotplug-safe, they circumvent the device model
  claim mechanism, and it's hard to do the reference counting
  correctly.

  3) There are several things going on in this patch and it would be
  easier to read if you could split them into separate patches:

    - Removing the redundancy between chipset_ids[] and i5k_amb_ids[].
      This seems like a nice change.

    - The "chipset_ids[i].fbd0 + 1" thing was weird and the new
      ".driver_data + 1" is still weird.  Those are PCI device IDs,
      and addition is not a valid operation on those IDs.  IMHO both
      PCI_DEVICE_ID_INTEL_5000_FBD0 and PCI_DEVICE_ID_INTEL_5000_FBD1
      should be listed explicitly in the driver instead of trying to
      compute PCI_DEVICE_ID_INTEL_5000_FBD1.

    - Replacing the hard-coding of PCI_VENDOR_ID_INTEL with the vendor
      ID from i5k_amb_ids[] seems worthwhile and should be its own
      separate patch (if possible).

    - Changing to use pci_get_device_by_id().  This should be trivial
      to verify, like the other patches.

> > ---
> >   drivers/hwmon/i5k_amb.c | 38 +++++++++++++++-----------------------
> >   1 file changed, 15 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/hwmon/i5k_amb.c b/drivers/hwmon/i5k_amb.c
> > index b09c39abd3a8..cb85607d104f 100644
> > --- a/drivers/hwmon/i5k_amb.c
> > +++ b/drivers/hwmon/i5k_amb.c
> > @@ -414,16 +414,14 @@ static int i5k_amb_add(void)
> >   }
> >   static int i5k_find_amb_registers(struct i5k_amb_data *data,
> > -					    unsigned long devid)
> > +				  const struct pci_device_id *devid)
> >   {
> >   	struct pci_dev *pcidev;
> >   	u32 val32;
> >   	int res = -ENODEV;
> >   	/* Find AMB register memory space */
> > -	pcidev = pci_get_device(PCI_VENDOR_ID_INTEL,
> > -				devid,
> > -				NULL);
> > +	pcidev = pci_get_device_by_id(devid);
> >   	if (!pcidev)
> >   		return -ENODEV;
> > @@ -447,14 +445,15 @@ static int i5k_find_amb_registers(struct i5k_amb_data *data,
> >   	return res;
> >   }
> > -static int i5k_channel_probe(u16 *amb_present, unsigned long dev_id)
> > +static int i5k_channel_probe(u16 *amb_present, unsigned int vendor,
> > +			     unsigned int device)
> >   {
> >   	struct pci_dev *pcidev;
> >   	u16 val16;
> >   	int res = -ENODEV;
> >   	/* Copy the DIMM presence map for these two channels */
> > -	pcidev = pci_get_device(PCI_VENDOR_ID_INTEL, dev_id, NULL);
> > +	pcidev = pci_get_device(vendor, device, NULL);
> >   	if (!pcidev)
> >   		return -ENODEV;
> > @@ -473,23 +472,12 @@ static int i5k_channel_probe(u16 *amb_present, unsigned long dev_id)
> >   	return res;
> >   }
> > -static struct {
> > -	unsigned long err;
> > -	unsigned long fbd0;
> > -} chipset_ids[]  = {
> > -	{ PCI_DEVICE_ID_INTEL_5000_ERR, PCI_DEVICE_ID_INTEL_5000_FBD0 },
> > -	{ PCI_DEVICE_ID_INTEL_5400_ERR, PCI_DEVICE_ID_INTEL_5400_FBD0 },
> > -	{ 0, 0 }
> > -};
> > -
> > -#ifdef MODULE
> >   static const struct pci_device_id i5k_amb_ids[] = {
> > -	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_5000_ERR) },
> > -	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_5400_ERR) },
> > +	{ PCI_DEVICE_DATA(INTEL, 5000_ERR, PCI_DEVICE_ID_INTEL_5000_FBD0) },
> > +	{ PCI_DEVICE_DATA(INTEL, 5400_ERR, PCI_DEVICE_ID_INTEL_5400_FBD0) },
> >   	{ 0, }
> >   };
> >   MODULE_DEVICE_TABLE(pci, i5k_amb_ids);
> > -#endif
> >   static int i5k_amb_probe(struct platform_device *pdev)
> >   {
> > @@ -504,22 +492,26 @@ static int i5k_amb_probe(struct platform_device *pdev)
> >   	/* Figure out where the AMB registers live */
> >   	i = 0;
> >   	do {
> > -		res = i5k_find_amb_registers(data, chipset_ids[i].err);
> > +		res = i5k_find_amb_registers(data, &i5k_amb_ids[i]);
> >   		if (res == 0)
> >   			break;
> >   		i++;
> > -	} while (chipset_ids[i].err);
> > +	} while (i5k_amb_ids[i].device);
> >   	if (res)
> >   		goto err;
> >   	/* Copy the DIMM presence map for the first two channels */
> > -	res = i5k_channel_probe(&data->amb_present[0], chipset_ids[i].fbd0);
> > +	res = i5k_channel_probe(&data->amb_present[0],
> > +				i5k_amb_ids[i].vendor,
> > +				i5k_amb_ids[i].driver_data);
> >   	if (res)
> >   		goto err;
> >   	/* Copy the DIMM presence map for the optional second two channels */
> > -	i5k_channel_probe(&data->amb_present[2], chipset_ids[i].fbd0 + 1);
> > +	i5k_channel_probe(&data->amb_present[2],
> > +			  i5k_amb_ids[i].vendor,
> > +			  i5k_amb_ids[i].driver_data+1);
> >   	/* Set up resource regions */
> >   	reso = request_mem_region(data->amb_base, data->amb_len, DRVNAME);
> > 
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

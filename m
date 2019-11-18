Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9382E100EA5
	for <lists+linux-mtd@lfdr.de>; Mon, 18 Nov 2019 23:14:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nX+Wqq++EK/yEA1Dgq1nl6aGNJUNqMAECJl/vYsEDtU=; b=bOxGwZAdEnjEai
	o71w9FyRppSsybHaCSMxfJQJnuzBMNmB8FjQX4HDk3jV8FWLGZGikYMr9kFpw+gUwYc0sAXqzZiu1
	oXetlm1WNpHrotfRGO0nGt2o98adNNOpdIciaO2PAbge+u8gqyxKSL0JHMHlOe+on3SIX5aM/S5G7
	TJRBPN5jzTYKvppZYy/3s/R1BPNAQAs4ri8Wb6R4e8gkltNenyXwnGh2GHminlTmJQxc5CiROjQcC
	HEV3qfqlP+9AAdkc5Gftwb5OO6GLmnKWUpC9c6/Yjs+vA95X8I0fd+h+49gpRJpdsOka1hwn5HZNK
	/zhNKVm0Ey19uGRa7qLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWpHQ-0001cw-Ft; Mon, 18 Nov 2019 22:13:56 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWpHD-0001c5-Fl
 for linux-mtd@lists.infradead.org; Mon, 18 Nov 2019 22:13:47 +0000
Received: by mail-ot1-f66.google.com with SMTP id r24so15986024otk.12
 for <linux-mtd@lists.infradead.org>; Mon, 18 Nov 2019 14:13:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Uz71LFY9ZiC02xsaXtidPtTM6eY67MbXjszr1DEYBdw=;
 b=DuZommwKuVZFGnEss6GJCsl/zhYtghKHGRLIdJ+yPQEYaJR/J6fg5un6Hf7LDpfMzp
 sILPu/SwmCq448XmWRHWjgT2ZfxTHjH90RGXACKdsvnvy3QKsxTaOkExKw0xZjpGSlK8
 8yyY2QV90rKYlUN6FrzbP940n7NL+wNLcnZXth8fW71X/AV/wrX8edwCo7wPhP/zphlA
 WwWBNZHRz5Z5CYhK3tpO1bXaBwZQMWQ+7I8zwT7ma10qUu+ErTNvebt2PQ7Or1YYQgiy
 9E4r8vYGVWGKafkV5JLe9a/lQeqtXOFKxo6THH2bORQ31iZt+YAX0csE7XEYJJldmOL1
 UF8Q==
X-Gm-Message-State: APjAAAXP9eDfexAZQa3t6ybQNqKDeStYf8wpFvymbnd3wAwpwOF8pVwk
 TxrymH6aF+o8y7MdgCfDnw==
X-Google-Smtp-Source: APXvYqw6QpdZzQirquW55aln+tRJNgakjQaUccKPAVTwfpO/53lbAe+zERpVYHbBdX6++qUYf6kIKg==
X-Received: by 2002:a9d:3b26:: with SMTP id z35mr1175001otb.355.1574115222697; 
 Mon, 18 Nov 2019 14:13:42 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 65sm6519025oie.50.2019.11.18.14.13.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 14:13:41 -0800 (PST)
Date: Mon, 18 Nov 2019 16:13:41 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: mtd: Describe mtd-concat devices
Message-ID: <20191118221341.GA30937@bogus>
References: <20191113171505.26128-1-miquel.raynal@bootlin.com>
 <20191113171505.26128-4-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113171505.26128-4-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_141343_525799_2584F35B 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Bernhard Frauendienst <kernel@nospam.obeliks.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 06:15:04PM +0100, Miquel Raynal wrote:
> From: Bernhard Frauendienst <kernel@nospam.obeliks.de>
> 
> The main use case to concatenate MTD devices is probably SPI-NOR
> flashes where the number of address bits is limited to 24, which can
> access a range of 16MiB. Board manufacturers might want to double the
> SPI storage size by adding a second flash asserted thanks to a second
> chip selects which enhances the addressing capabilities to 25 bits,
> 32MiB. Having two devices for twice the size is great but without more
> glue, we cannot define partition boundaries spread across the two
> devices. This is the gap mtd-concat intends to address.
> 
> There are two options to describe concatenated devices:
> 1/ One flash chip is described in the DT with two CS;
> 2/ Two flash chips are described in the DT with one CS each, a virtual
> device is also created to describe the concatenation.
> 
> Solution 1/ presents at least 3 issues:
> * The hardware description is abused;
> * The concatenation only works for SPI devices (while it could be
>   helpful for any MTD);
> * It would require a lot of rework in the SPI core as most of the
>   logic assumes there is and there always will be only one CS per
>   chip.

This seems ok if all the devices are identical.

> Solution 2/ also has caveats:
> * The virtual device has no hardware reality;
> * Possible optimizations at the hardware level will be hard to enable
>   efficiently (ie. a common direct mapping abstracted by a SPI
>   memories oriented controller).

Something like this may be necessary if data is interleaved rather than 
concatinated.


Solution 3
Describe each device and partition separately and add link(s) from one 
partition to the next 

flash0 {
  partitions {
    compatible = "fixed-partitions";
    concat-partition = <&flash1_partitions>;
    ...
  };
};

flash1 {
  flash1_partition: partitions {
    compatible = "fixed-partitions";
    ...
  };
};

Maybe a link back to the previous paritions too or a boolean to mark as 
a continuation.

No idea how well this works or not for the kernel, but that really 
shouldn't matter for the binding design.

Rob

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

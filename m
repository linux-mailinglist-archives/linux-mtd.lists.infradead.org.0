Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220CA1D8466
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 20:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nl6fgy2A2JGCCdy0xJ4K+XZ2ZBpdQwfAD3j3oKvegNU=; b=PugX72XwoF0ueH
	qdgX+U00hhDd3WomOu77kWg609fcDJxqgkrgLwo6mjb6U/4zNCQLXfBMIFK9ZldlVTGhlGIeKc6Kk
	hFuoockCbg8otskNdCRsjQMQ6eiHxwhTV0028bQpS3G4gawgsJtZpvAuMTgJGKMJUsUhxpSvkl9xY
	AMaVh6y0S09xCvv9ZhKGhDnYlpZ0h+thDmx/kCiBgLVw69NhCNmAQMrAUHLjVexeWCwafY/hG7Pdf
	Rue6E9YGyB2pOF1bWTTUjQuQZjV5BuhzpCnGxghM3yp7j1AOQPCchXgTMACo3rtpopwcgK5bAM9h3
	L7I2Rt1AseVZc99SBEWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakFb-0007R6-4g; Mon, 18 May 2020 18:12:31 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakFQ-0007Q6-Ub
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 18:12:22 +0000
Received: by mail-il1-f195.google.com with SMTP id j3so10760721ilk.11
 for <linux-mtd@lists.infradead.org>; Mon, 18 May 2020 11:12:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wza7y0iWSmQunc9aAsvn/ABnmr/MQ8TpkPd34EycxTs=;
 b=G4qGsnRvjs37weApgTWtbYu82TRzmyK0ll3+4ydL+EqM6zeO/G6b0DSqFE0aaTCrfw
 LB0jVS+dSHqaTblFR4XFvwz5MtKEmEAaPH4WaSV5zm8TJgN3/5uPRfXd/qCeyDDUEhRU
 /YlC8poDUoPyEYnhYAFa6YfsWclt657agtD5cp2ns0jPrValigFx6s51Ixzi14EDHMAx
 Jp71yxjfPvWRDFIrufKVf1K8UJ6xHAhP/x/za/ddYDsM6NfJ8iYQfbivUSkjOTcIpvoZ
 p/To5BUQiFt3Uh/1NJkzINiKBJuPC+8fpppp0CpwNH+YURrY2zdImh/RNPRClaoNlDPh
 Veng==
X-Gm-Message-State: AOAM531a65a7qcPFHxaj44Iau/Q+9PWo+wNISqsMjA7cMhItUzaPlC8f
 LcIsWmp30yLmxlxCPqnUew==
X-Google-Smtp-Source: ABdhPJxRuz2c7uilqkp6Yz7wsrwWTC5DyQruXesuSs2L9u16dXm49HJmPCUrA+N2gnuqLeLFa3yW+w==
X-Received: by 2002:a92:8cd6:: with SMTP id s83mr18470530ill.133.1589825538604; 
 Mon, 18 May 2020 11:12:18 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id p1sm4087313ioh.38.2020.05.18.11.12.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:12:17 -0700 (PDT)
Received: (nullmailer pid 15457 invoked by uid 1000);
 Mon, 18 May 2020 18:12:16 -0000
Date: Mon, 18 May 2020 12:12:16 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 6/8] dt-bindings: mtd: Document ARASAN NAND bindings
Message-ID: <20200518181216.GA15399@bogus>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
 <20200508171339.8052-7-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508171339.8052-7-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_111220_983336_415AB77B 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
 Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri,  8 May 2020 19:13:37 +0200, Miquel Raynal wrote:
> Document the Arasan NAND controller bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/mtd/arasan,nand-controller.yaml  | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/arasan,nand-controller.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

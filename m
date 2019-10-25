Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70176E5424
	for <lists+linux-mtd@lfdr.de>; Fri, 25 Oct 2019 21:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08g7+ORey2sIRnUHXKn/+vC1Ipz9wYogMLP0WTxIkW4=; b=i+fi3kf9BFoykh
	0Xlc7XTtCnm5Gs4KEPcg6UI6LTLoS2TIKkaWwwPD7CODj6MCV36cEcbc91f2+vnDWwh/5GJlekgEB
	5PSIlGwCFnjhMU03DjlCziu3NodIh6BQF+om/r4HrZ+LW3oXEcd1rVd/6/cGWCFyFLeCzRQtrg8wZ
	F8ecSrOc3P0YI5HW9R0K3TQHzR0fD/NPrmOFDywa7hFPo8UuLGs1JepVB0JMm20rDXGT4tna1J1FH
	KDgZkCVyx3E/uW736tbGPR9gRBr17V2n8B7G0wpzs13l5xd14mN52PELQtG7iUKaZAr6ZzcAgRc0a
	jcs8kVALPT8T4JJ8aWQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO518-0005RI-5D; Fri, 25 Oct 2019 19:12:58 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO510-0005QN-W0
 for linux-mtd@lists.infradead.org; Fri, 25 Oct 2019 19:12:52 +0000
Received: by mail-oi1-f194.google.com with SMTP id 83so2343950oii.1
 for <linux-mtd@lists.infradead.org>; Fri, 25 Oct 2019 12:12:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jngMWCIPztnYRQYTQh0CwZua3m9mf2/Z8m7qkZoUWLU=;
 b=rvWLPmHbpySr3AAURuPp93UgTTGPtrA180BJp0RohVmPGIZ2JEwaHAGk2r9kB/BukK
 N+5Cj15Zb0kMvpp+QpL+PXBogH+sEsfYx8PO0B6kZORniM6hfV4XI1wASR4AYruQPUam
 GPB3DjXRK0xVdRjgUkawbPo8FDd/DInmAOk1iXBWMGJWJeY5dSUZfot9GO67Joc9Lye/
 OrnbAdtZRpjRZbd2Obhh3CeCP6W+DpZN+E9m5D9ddOggBe0Af6IUmSGxVnaAdFvVFFdC
 fKUvaxmRXibRBVev8uy+wRWI5Uv57sycefgnyrWCxagNfNxNnXp+GXxpwtc/x+Czk1Rc
 J40A==
X-Gm-Message-State: APjAAAUa+CiZlBOiB/eqU/TsgNqscaMFTJ0YUU7Hx0MbggdU0cjr+sBR
 ZHS1rVRbwnh6Bm3iddpflw==
X-Google-Smtp-Source: APXvYqychJbSk5eJXpbRojc8uKVE2GqcHFj9XB/1X5MHc33e7I4ZD+T/fHo/iam0Sh2IYVxB5WcJpQ==
X-Received: by 2002:aca:e104:: with SMTP id y4mr4461365oig.117.1572030769368; 
 Fri, 25 Oct 2019 12:12:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n186sm794340oih.58.2019.10.25.12.12.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 12:12:48 -0700 (PDT)
Date: Fri, 25 Oct 2019 14:12:47 -0500
From: Rob Herring <robh@kernel.org>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v4 2/2] dt-bindings: mtd: Document Macronix NAND device
 bindings
Message-ID: <20191025191247.GA7206@bogus>
References: <1571902807-10388-1-git-send-email-masonccyang@mxic.com.tw>
 <1571902807-10388-3-git-send-email-masonccyang@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571902807-10388-3-git-send-email-masonccyang@mxic.com.tw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_121251_028866_D2C8ACAF 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, masonccyang@mxic.com.tw,
 vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw, richard@nod.at,
 linux-kernel@vger.kernel.org, marek.vasut@gmail.com, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 15:40:07 +0800, Mason Yang wrote:
> Document the bindings used by the Macronix NAND device.
> 
> Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> ---
>  .../devicetree/bindings/mtd/nand-macronix.txt        | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/nand-macronix.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

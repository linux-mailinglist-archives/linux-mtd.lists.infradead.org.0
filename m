Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805E71E6E0A
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 23:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21vu/0IJ9/u/eLOg+qLSlxMAprFnfLw5WXqQvqwTHWU=; b=uvcP4ZSbM9ikDp
	td0ipocDjvcG+LHBdRtgD7tqN0/57qUbtHysRtIaQS4BcratrEKwSIBq8amWKgYzAZFRWEoeyG/bg
	3s8aX4neb7fwJJlfK5dIILLjiRSWlg82wGzHghwfoMiw7SmTKxKvGfgou9SqYlcd4jNJDDwN1Me2d
	HMrF91IYj3NCGqYAmTLYdWksDe4fYroBEatD4OWrPg58AQiS+elC04P71ttWzaD1G/D946yIS+YiZ
	JaM8V+DhaC9xDB7zKhZnH634WKTNUtMchJA2fTNjNIYi5YGZpkiOM1G6LSj66LD9+obHk2xdon5u4
	wPeM0er/ulwGnnE0kAFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQLd-0007al-0E; Thu, 28 May 2020 21:45:57 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQLF-0007SU-Uj
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 21:45:35 +0000
Received: by mail-io1-f68.google.com with SMTP id r2so150981ioo.4
 for <linux-mtd@lists.infradead.org>; Thu, 28 May 2020 14:45:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dzcr+mjHsM24aLkHoAOHak6nDxRWVx38hpQtHZNedBU=;
 b=sQdTyBwceYmvj1xkuGdKh7lkg6mDlR4s5yR1PLfgUzVSQWroOJ57V2N69TDQ8zUcBg
 mDb3exsVUE/wQ4uHXS/fKDroLfioCv4nFzfBBPl949hxBqsyOswk7LtdtniwMJzNxZPv
 mzcEWQaT/pwa9s3YZztp4sg9PEZWxpQULEjYdNsz7IkSZ1d6L3lRuurixhLQGuuSrBOf
 k5a6SB8aNoew6ODlkcNirUtRQ96QVddH+w7EQqTt7HvYMQluBLiwlb8LnCp6uHVW9wNT
 Mm3zAGJexybuqIDjvwj4qgVL41GdSMgwFvJBQ7Ubr9o0aLV2C6YrUOUZ5HCfc6Hr1Sd5
 4+fg==
X-Gm-Message-State: AOAM532kyOnKtmBVh2LSV1V461IEWK/DhOvhkijQKQZanLtNI7OCo8jo
 5VgJR75Hm8gJhJ9UhOavmA==
X-Google-Smtp-Source: ABdhPJwC1uAdK3xHvNfrdgLrzQBAEO/Oap6NIueFHuSo9LjSPNqIav0iLMI2MKVwHl/FBhzeFZpwYw==
X-Received: by 2002:a02:ce8a:: with SMTP id y10mr4521911jaq.136.1590702333103; 
 Thu, 28 May 2020 14:45:33 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id u1sm2998555iol.42.2020.05.28.14.45.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 14:45:32 -0700 (PDT)
Received: (nullmailer pid 738875 invoked by uid 1000);
 Thu, 28 May 2020 21:45:31 -0000
Date: Thu, 28 May 2020 15:45:31 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v2 2/3] dt-bindings: memory: Convert
 ingenic,jz4780-nemc.txt to YAML
Message-ID: <20200528214531.GA738825@bogus>
References: <20200520002234.418025-1-paul@crapouillou.net>
 <20200520002234.418025-2-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520002234.418025-2-paul@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_144534_135477_31E38186 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Boris Brezillon <bbrezillon@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-gpio@vger.kernel.org, od@zcrc.me, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 02:22:33 +0200, Paul Cercueil wrote:
> Convert the ingenic,jz4780-nemc.txt doc file to ingenic,nemc.yaml.
> 
> The ingenic,jz4725b-nemc compatible string was added in the process,
> with a fallback to ingenic,jz4740-nemc.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
> 
> Notes:
>     v2: - Inline content of ingenic,nemc-client.yaml inside ingenic,nemc.yaml
>     	- Add missing 'reg' property to sub-nodes and mark it as required
>     	- Use a more generic wildcard to match all sub-nodes.
> 
>  .../ingenic,jz4780-nemc.txt                   |  76 -----------
>  .../memory-controllers/ingenic,nemc.yaml      | 126 ++++++++++++++++++
>  2 files changed, 126 insertions(+), 76 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ingenic,jz4780-nemc.txt
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/ingenic,nemc.yaml
> 

Applied, thanks!

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

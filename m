Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF141B9F77
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 11:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+rty6aLevUpU4kGOCkOmLRCWFw3m0f3P3jyIrOaexYA=; b=IthVIPFftHX6I8dUZEkfKQ5VF
	ts4BeaTZjjP1B5ffHRlSJTyN9en2m6lCB7WXq4orbETDlinH6/sk0xS6VH/r+tLMbI7UQnS1ExxWG
	4t8qyWRnU8nXe52wfYmiPyn2u2AxtOFomfSOlXbQEO/jGDdsooeHyxHu9FJc3mYAgX2OCognUnxdO
	h9QoAachyMs6AdxCLn2y2QMK8Xc4StEN/LqwTsDPEoNnjVQvY0HPB8GC1JTUyghd0jvLVlT9CiETI
	GMauJcjy/tNcVxt3JnGgCkIMUswo0OhXsGPSPyPEpKiMfBopVxu2TntofqahhY7j5SnCrOOKL7naY
	bQ2nXIWOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzo2-0000WA-2p; Mon, 27 Apr 2020 09:12:02 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSznu-0000VI-GD
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 09:11:55 +0000
Received: by mail-lf1-x141.google.com with SMTP id 198so13211439lfo.7
 for <linux-mtd@lists.infradead.org>; Mon, 27 Apr 2020 02:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yBDkRvrTx74S5+gZjwEZ9iACmQsB1T2mQm+OV8dNjho=;
 b=raiJTN/HRYGaHVksUpfYX1wyYGDzcsdeCn7DrhKbOfDdjw/MLRxJJ8twCfPbR+Hi+d
 m8bbSAERhc78/7BNmN1M53+RrtZEJ6gtB3M4L/MvDLvZWeuPCjfITc/mc+iiDbRI3jjR
 G56jqF9qTkDPlKs5mhLYIS5vYGfrbcvcZP6AW/yU1q9cczrf8qBd6r6oWB5XL28M/Frw
 orziZWnsTcshI8t2j3gcbvEYPcMnUScLotRV1QDBsU66EKXEGD/B5hQGFC8FNcH0EZn5
 2nZz6AH/d9ZmaJHEkzCchnk/7O80CEbGvOIVKmb/R/WB+M2sfP/FfJQ89qshWJydfTWv
 l8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yBDkRvrTx74S5+gZjwEZ9iACmQsB1T2mQm+OV8dNjho=;
 b=Xb6LvG3FktvWqJX2iX55N+MM20SVT0U8qRkp0y8MFWs3ife0KzCSTs+6A9DTSVDwtW
 uIXk8Up2ji0isu7MTkiq0J8e0pybmpPFkDv20rmS2GBsXwYNmLIFfgphF19JKNemXfcR
 tqwFiEMqNc7bdZcpksInmEw50E1J37SJrmoKESj+aMr2ac1QnXxqnCpGjbvg9DkxhKVv
 KWagDd8o8DaUmu2PFdJtwhgzZm17nDFGQI35QQ3LdNXBB7xDqpXu5qJAWULz5GkRMTK/
 s+RUSwPvqkEvtpgC0lzQggZtRErpoO6asEy5+0vHkahZiREymk+ifjCVi9o8Adxdsf3/
 Z6oQ==
X-Gm-Message-State: AGi0Puau18KbkelotH++3oxImCeKP8PzkNWXoU/TvQY8KTvSwmgWz7AR
 IKwgOHgPLDywW9pYHcIBdZOZRw==
X-Google-Smtp-Source: APiQypJyVX/9wGU9KkPKAbdOn5EfnQbiZMB1wIjiO7M9xszAG/gddAjg0bucMZClaTTySjGPgz8dTA==
X-Received: by 2002:ac2:5930:: with SMTP id v16mr14736464lfi.103.1587978712022; 
 Mon, 27 Apr 2020 02:11:52 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:468e:1152:9c79:cdeb:725:5fa4?
 ([2a00:1fa0:468e:1152:9c79:cdeb:725:5fa4])
 by smtp.gmail.com with ESMTPSA id h6sm9088671ljj.29.2020.04.27.02.11.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 02:11:51 -0700 (PDT)
Subject: Re: [PATCH 2/8] dt-bindings: intc: Convert ingenic,intc.txt to YAML
To: Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>
References: <20200426185856.38826-1-paul@crapouillou.net>
 <20200426185856.38826-2-paul@crapouillou.net>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <f865b39a-3e8d-a367-45b2-aa5e7412e81a@cogentembedded.com>
Date: Mon, 27 Apr 2020 12:11:46 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200426185856.38826-2-paul@crapouillou.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_021154_537756_389EB860 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?B?5ZGo55Cw5p2w?= <zhouyanjie@wanyeetech.com>,
 linux-gpio@vger.kernel.org, od@zcrc.me, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-clk@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!

On 26.04.2020 21:58, Paul Cercueil wrote:

> Convert the ingenic,intc.txt doc file to ingenic,intc.yaml.
> 
> Some compatible strings now require a fallback, as the controller
> generally works the same across the SoCs families.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
[...]
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.yaml
> new file mode 100644
> index 000000000000..28b27e1a6e9d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/ingenic,intc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Ingenic SoCs interrupt controller devicetree bindings
> +
> +maintainers:
> +  - Paul Cercueil <paul@crapouillou.net>
> +
> +properties:
> +  $nodename:
> +    pattern: "^interrupt-controller@[0-9a-f]+$"
> +
> +  compatible:
> +    oneOf:
> +      - enum:
> +        - ingenic,jz4740-intc
> +        - ingenic,jz4760-intc
> +        - ingenic,jz4780-intc
> +      - items:
> +        - enum:
> +          - ingenic,jz4775-intc
> +          - ingenic,jz4770-intc
> +        - const: ingenic,jz4760-intc
> +      - items:
> +        - const: ingenic,x1000-intc
> +        - const: ingenic,jz4780-intc
> +      - items:
> +        - const: ingenic,jz4725b-intc
> +        - const: ingenic,jz4740-intc
> +
> +  "#interrupt-cells":
> +    const: 1

    Do double quotes work the same as the single ones?

[...]

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

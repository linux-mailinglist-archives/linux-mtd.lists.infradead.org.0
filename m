Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754FC1BC0C5
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 16:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TDbnNO30LOH6W1yy7/7YDtBOue8dOu9uaXW3gh4joGg=; b=NTtYfWDirqHoyz0GmDi8IZ/1m
	HoWjzwU/O/P/HxUHj1asgsQ5vqo/03pL1vzmcbJraI0LjwYReXIsgpGrXdbs5nJsdVDxemj1NPNsj
	NwNbjyPN6CZAjLuEaFdihzliVq7sgeHYveZ9digJIQl4u8nwN4DCUzxYimeRcpJKAiXuunAnBZjfl
	kR3GxnHkQKoayAJs7u6PnFHNTSkEj0H+fI6zL0sxpaIkPHwfacYq7aYI/TDA4qW6jFcATUafraoEk
	sLEsbmt49x6XWEHO9mhHwLIvh4hhwBuIF1Qn5UY+qhsWr0Im31FZ7NVDXrJLt4iAAoBIqX4ClPCA1
	igpVuAuVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQwV-0004zn-VX; Tue, 28 Apr 2020 14:10:35 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQwJ-0004wu-0U
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 14:10:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1588083017; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2+w+KwDzaOwV/ww7pNfZrsFBOSdK2uRoIyYyszXC2jE=;
 b=vOy6cik5Ke533LRPLshMJ+qzIX64H6Cij9kixdoYn7wlFWU7BcpUORTgGjl00q+cPNyTHh
 BbFCg7mLoK1rJVPcplaMCp9tjrNaBELaA/yLJ5L01LwPb6aiWQha9Riei2/T2hz8Wp0kvk
 mMmfgtX5WwOdDWnDWKeSk5Jfz8HZyCs=
Date: Tue, 28 Apr 2020 16:10:05 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 2/8] dt-bindings: intc: Convert ingenic,intc.txt to YAML
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-Id: <TO4I9Q.UQRWC3A2ABT52@crapouillou.net>
In-Reply-To: <f865b39a-3e8d-a367-45b2-aa5e7412e81a@cogentembedded.com>
References: <20200426185856.38826-1-paul@crapouillou.net>
 <20200426185856.38826-2-paul@crapouillou.net>
 <f865b39a-3e8d-a367-45b2-aa5e7412e81a@cogentembedded.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071023_249957_DD05D76C 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, od@zcrc.me, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?b?5ZGo55Cw5p2w?= <zhouyanjie@wanyeetech.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Sergei,

Le lun. 27 avril 2020 =E0 12:11, Sergei Shtylyov =

<sergei.shtylyov@cogentembedded.com> a =E9crit :
> Hello!
> =

> On 26.04.2020 21:58, Paul Cercueil wrote:
> =

>> Convert the ingenic,intc.txt doc file to ingenic,intc.yaml.
>> =

>> Some compatible strings now require a fallback, as the controller
>> generally works the same across the SoCs families.
>> =

>> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> [...]
>> diff --git =

>> a/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.ya=
ml =

>> b/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.ya=
ml
>> new file mode 100644
>> index 000000000000..28b27e1a6e9d
>> --- /dev/null
>> +++ =

>> b/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.ya=
ml
>> @@ -0,0 +1,63 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: =

>> http://devicetree.org/schemas/interrupt-controller/ingenic,intc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Ingenic SoCs interrupt controller devicetree bindings
>> +
>> +maintainers:
>> +  - Paul Cercueil <paul@crapouillou.net>
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^interrupt-controller@[0-9a-f]+$"
>> +
>> +  compatible:
>> +    oneOf:
>> +      - enum:
>> +        - ingenic,jz4740-intc
>> +        - ingenic,jz4760-intc
>> +        - ingenic,jz4780-intc
>> +      - items:
>> +        - enum:
>> +          - ingenic,jz4775-intc
>> +          - ingenic,jz4770-intc
>> +        - const: ingenic,jz4760-intc
>> +      - items:
>> +        - const: ingenic,x1000-intc
>> +        - const: ingenic,jz4780-intc
>> +      - items:
>> +        - const: ingenic,jz4725b-intc
>> +        - const: ingenic,jz4740-intc
>> +
>> +  "#interrupt-cells":
>> +    const: 1
> =

>    Do double quotes work the same as the single ones?

Yes. The only difference is that you can escape characters in double =

quotes.

-Paul

> =

> [...]
> =

> MBR, Sergei



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

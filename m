Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3981DEBEE
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 17:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=azHEqBRk9hijQIcZk4G5+F7ypbT6yAoEd1QtfhT2ZZA=; b=rDkbt+QiHy/G7XtxQ4zOudKQxd
	mZUtGfanSb7E+oag0ROoxEfmTEg/2ytvJkIv3bklfYwZ1ltkGJL9GWmVpJoPnVigkbiuN9QuRFv1k
	RadShhGBA7lDJERuHEITSO93kHq3R1CRfAVbAel765jxNlx0DWNfsJ5I09/lwjv2UFG65QhQHjSFS
	xoO7TDlHqO+GdV+BYFoIZBm6sZ7OGEnf17d+OPJu7QC7EexldXcrg2J8P6VdyG2b3KQG8f5TH921w
	Uf0gWOUAv8/gu9HFiOJjexrmVGf9pcZeiFCAyBSBxJmMfhwIjnY1J/gc/2tSS2ok5yVR3VNo/V7C9
	OyUfJ6VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9gB-0002dv-5c; Fri, 22 May 2020 15:33:47 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9fU-00026Q-Rq
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 15:33:06 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t8so3017465pju.3
 for <linux-mtd@lists.infradead.org>; Fri, 22 May 2020 08:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=3ilcLhqdRQ8Z/PzvBN+C3JsIPM0TNycFGq2+m/w7rOY=;
 b=hka3Aj+j1wlh/rLYg8FbS4/ueTrez8GlaFwP/YGgw5ZNFu81qO806MX6Ij/1TPJdfz
 Mfb1ctOvSjC8e1xnS7o8R4MrH6jCXI3v+kjNs6UWxGLt3m0libyHJeXu6EdJa1QePbJu
 25VKGQp4ERnmPqVlNGWuQIDRKg5EnuJORc0nC0buiCQwD4elhTHs7JXxN76m13KjIOgF
 26LDDzamoEfv6cBf45scUoFCT0tGOhInqL7qZpjKlr4rlutTkYHVQAW/c5Pmpf0O+a/k
 m0CtX/z7KDJ4uMy8lyKBPpxGbEYlaMBfcjD73FMyFE09o5z1uuwP4xbSfyzzjluK8kr2
 SJmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3ilcLhqdRQ8Z/PzvBN+C3JsIPM0TNycFGq2+m/w7rOY=;
 b=WLRnJzrpVqVI8Kmy/zKw9gIISvFW2TJrhiVnF180socA5H29sjmhIOVqNG4Fv+DZaF
 JgClYwYBzoag0UPHjoO0Qs5LfyZnVuok1dCYxFXf0QY6PyOcvBG07ZwTJvgfrga3TIWp
 F6H3gDtQ/jzdohuBHJYniJnt1ZexMMZZbzM+Wgt/VSTyalQYcKgtii1EULFMM+ocOMQw
 OczqC2/+X061P6HU042jHqVKQV9ZBb8mGz6xHubOoE27QRsmkS6GFyKtenI+Jzm1v6Jv
 qHNIuDH/nVRqw7cYGqof8OHsRYQcKN75psAU6DGo6U+uHWXqqH7gG+LKFFzOFi7CC1ON
 /vRw==
X-Gm-Message-State: AOAM532f89yHv5KMlT8V0RdbKJW3RDvg+2PE470w6YwurnA19S2Qruiv
 weu+KdQ5oq7QoR0giCS5za8=
X-Google-Smtp-Source: ABdhPJyBraQCp8grS+tg/y4C3LTcYKbBhKGr0X+WyySmbzdjk7B6wNgnWH0ZKj2fWGtRGzVtdLo4Dg==
X-Received: by 2002:a17:90a:248:: with SMTP id t8mr5568531pje.67.1590161582985; 
 Fri, 22 May 2020 08:33:02 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z16sm6650992pfq.125.2020.05.22.08.33.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 08:33:02 -0700 (PDT)
Subject: Re: [PATCH v4 1/5] mtd: rawnand: brcmnand: rename v4 registers
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20200522072525.3919332-1-noltari@gmail.com>
 <20200522121524.4161539-1-noltari@gmail.com>
 <20200522121524.4161539-2-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9568caad-9ac2-44be-d492-3e03f719b0d6@gmail.com>
Date: Fri, 22 May 2020 08:33:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200522121524.4161539-2-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083304_936553_EBE60454 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

CgpPbiA1LzIyLzIwMjAgNToxNSBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IFRoZXNlIHJlZ2lzdGVycyBhcmUgYWxzbyB1c2VkIG9uIHYzLjMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiBSZXZpZXdl
ZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCkFja2VkLWJ5
OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==

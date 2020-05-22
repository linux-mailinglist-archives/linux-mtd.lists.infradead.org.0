Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194F81DEC21
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 17:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zy4U/Zh013MYmWsKa7iMLpDnR1XhqhQ1qpIl/s7PuG4=; b=YQsmdlSOUD0OJ2dK2y4NfqIPvg
	MV+Xzc7/sHKWhDvTO6JhX8M3ZbiSmO7aVfsMtA/Lojp34WmwpWy5l/ZClJ19HisZ0/LJsP9Wf+ALL
	OmP8fu938DLWvBqrFV9onP4dooQeY3/UVnUTCphtzr4yHHwuKGB0IbpHl+xXMW9wv0Zd0K0GLQ7vK
	JMEriFUq/lMcUuIEqDpqzqUZ4Ql6N/ST/si7Vo7Kzy9MSDWQPKFeMUJqvNFhakMAm54BSlvc5XbL/
	nVMUGR1WHPXEm2StauL/RXySk/PmKavm7SufKyLkjK1Ro213LTDTcmtzL2zkhJejag1AOlHZHCZ/4
	Y4Dk94+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9kO-0007fF-72; Fri, 22 May 2020 15:38:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9kF-0007eI-1k
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 15:38:00 +0000
Received: by mail-pf1-x443.google.com with SMTP id y198so5366663pfb.4
 for <linux-mtd@lists.infradead.org>; Fri, 22 May 2020 08:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=+fdIAJRjmy/rRR+RCbZVMEUtca3wMVBf5rN50QMs3So=;
 b=of6/20nR4qUZHgnavujGqmJRI1sCVIF8UQic9SqHgWtJ6xKMPVtzRsFzCtVpXSjYWZ
 Ky7pYD/Wws7A57tCGkRyQYXfdainh/VVp4nem55oyyuqIxHzQRM0C0Bq7aCM79Px3P6O
 s4qJ0iGWyMY8DfmDJxdmT514qEQBx9moXcxPeSj22Iw0rqcOKu5Ad41EEIi0oZN0tZKX
 h71o6hsLvzLZLkU0h8HxbRDQZ3/bM4tYYtvNo49QzoxQ9w5d2HBMD5ERA+hYbAueQD28
 r65WU58ZSNYdriAz6HFBk+Z8qA8iHxeAvK7cpfUB93lcnc5FWwc00qnmwDFg8uuGromN
 rhVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+fdIAJRjmy/rRR+RCbZVMEUtca3wMVBf5rN50QMs3So=;
 b=AGHdb18JKEaK5/HDIBBMYowko1FuPeYt1GCLuIfTzDShT5RYCOg2f6eXQr3KN4bXBu
 rofi4LKVnmTHHaU0QDEkhrdl1ZK2EQt649vW3COj84skqGkGZAI+XRPHFBSqdSHAbMyx
 YTJrsyKGUPn/aYvbrQRWwJg4Svbr9gyDAGxSHQMqpgBll+KLFKd6q4evqynhnHDdELD8
 25F0HILTtVud+465A1fnOHsALFu5ihacPL46la4lu4082pB7UQMbkJnFR2Fx4Wnk/MZx
 M9XFTm4KwM9kv6cLnuMlmXts2y2+cuWPAKVXNC5Xs0Y08rYDt3mrUPInwPdA2A0Xo2Mu
 MUhQ==
X-Gm-Message-State: AOAM533dyl4SU2NvOO3OtGwUWO8E91jAjcdjblNWaKfTFvOwZD1yexI0
 Qu63JpFj9ohS9C3ixLeHlVo=
X-Google-Smtp-Source: ABdhPJw7osy8VN0SR5WZS9ScPFqC3cP54TjG/bI/cqK0VsExF/NxvIMn/kzCXpkqssM0ilra1PLL8A==
X-Received: by 2002:a62:80ca:: with SMTP id j193mr4242287pfd.41.1590161877344; 
 Fri, 22 May 2020 08:37:57 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h4sm8086838pje.29.2020.05.22.08.37.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 08:37:56 -0700 (PDT)
Subject: Re: [PATCH v4 5/5] mtd: rawnand: brcmnand: support v2.1-v2.2
 controllers
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20200522072525.3919332-1-noltari@gmail.com>
 <20200522121524.4161539-1-noltari@gmail.com>
 <20200522121524.4161539-6-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <47f870ef-55d8-54b3-97df-2bdab8f1d77c@gmail.com>
Date: Fri, 22 May 2020 08:37:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200522121524.4161539-6-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083759_089621_83ABD5B0 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
IHYyLjE6IHRlc3RlZCBvbiBOZXRnZWFyIERHTkQzNzAwdjEgKEJDTTYzNjgpCj4gdjIuMjogdGVz
dGVkIG9uIE5ldGdlYXIgREdORDM3MDB2MiAoQkNNNjM2MikKPiAKPiBTaWduZWQtb2ZmLWJ5OiDD
gWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgoKQWNrZWQtYnk6IEZs
b3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgotLSAKRmxvcmlhbgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1U
RCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K

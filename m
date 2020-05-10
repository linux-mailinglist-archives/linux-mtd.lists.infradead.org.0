Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A541A1CCC05
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 17:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7Q99fnPxkTlEJUK6myBmbHVVWiPJFFZEXkHgYj9xD0M=; b=d7/go/+rR1e8aB0qjLTU26vCfY
	8XtfBWS3DHuloz4pMbp7HPizVDUavSNvz9WzSb8vmBIF3l52QiSHAdUHFTO+CRBLKRQLKYUq+nkkK
	clSJndufXEmRpRLTEjn2a9Au4LenKS+4AXF6Ismz7cEqOgEJt6w0zKt6tvlEtnFuxL9QiNzKxOTvp
	sWl23dL6KVCSqgu1nuyrgXnruwLNh1NDwnhYRrdSNSFFtqWETzX8tc1bKY98NxqHkXK9vspNXfTAP
	voY7hAi4mNznYPkh/ZivUUZhKOeb1k46hUlKiF2LK477/UqU8aZcfi3VDVB1b0mMqVSvyJqcy1nI8
	bd+jh3hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXo3H-0007np-Cq; Sun, 10 May 2020 15:39:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXo3A-0007nO-VE
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 15:39:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id r10so2827960pgv.8
 for <linux-mtd@lists.infradead.org>; Sun, 10 May 2020 08:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=seBRUeC3dXeweg1N46JHOrRIXAJ2J/eJ5PgpRDXu7Xc=;
 b=s4FTilbcUE8qHtABX9tC1pNRpLYSHM1TMUlKxdLHfC5Tof1lVZLrrpHEv2HJURUQAt
 gOqR0S6tdssLEU8p+wfY3407Y7n55X6ZgOiSWOYBr3SW7vwyDWMeXdxrGbFvIvTEKK8M
 FUxjaYGr2auuqB8f99EyUk5Eo7XSa1/dZc5OnGudxkdFz5beN77mjR7VSeXtEO8+G4y1
 URSuKE3HIbfwgkv/ma0LxIZF9/TwzVBUHO28l1oHJuKxu1bRlQYBtHpFvy6Qd290+Chv
 SSJwqDx3X/p7oMekjkjXbZrakW5q0inyzqjAfWSP+dub16WBR639QzqdIKuJgV4pEiDj
 MAmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=seBRUeC3dXeweg1N46JHOrRIXAJ2J/eJ5PgpRDXu7Xc=;
 b=MMPDIaWYwTIt/Dc5enjPBDnxaX5EicU3xkgC8kQQP31OHQ9RgclhNErloF4CGuZOzD
 p3Sjnci74tkNj4+ZViqG0Hnf/dYQ+sRZxnrNmUetO4HSXknn3vRfH0xPgeR8lmsr0Qla
 I5eTINj93/7YtiWqcGvDJWgcyiYikLwZ++rCbvOOKG23qlNJ9B8RZvtFS9PczAIH6wbP
 5YjUBOnHFRWJizuJJdb+EyqT7XRb1b0YMXoLScQwpDXpZgl1OHDPvCiRbroLxr/m/gRC
 VDPmzjUHNU1QQJFnx7aZU3c167I/o+hRDMz8ekaGdEt+MkvdOiBcFVAvxzSxJ5FONPxg
 WRhg==
X-Gm-Message-State: AGi0PubYPCINZig6Xf5wdN6Xegid9XrSJdMDa7Bk5B9s0t3n21lGQQpi
 VxP7c6uxU7bridmw/pG9bLw=
X-Google-Smtp-Source: APiQypJCzqQ1G38MUBlHGJNY+XRYSsDfA3QS/iaiPMPTtOCZltcGYKqYDBQ/vmE4+rvfmkAA0ntZVg==
X-Received: by 2002:aa7:9432:: with SMTP id y18mr12463677pfo.82.1589125171929; 
 Sun, 10 May 2020 08:39:31 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 s136sm7208036pfc.29.2020.05.10.08.39.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 May 2020 08:39:31 -0700 (PDT)
Subject: Re: [PATCH 3/3] nand: brcmnand: support v2.1-v2.2 controllers
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20200510151406.2527856-1-noltari@gmail.com>
 <20200510151406.2527856-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <e0b9365b-f22c-ac56-481b-ab21490a3409@gmail.com>
Date: Sun, 10 May 2020 08:39:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200510151406.2527856-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_083933_004698_768D7289 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

CgpPbiA1LzEwLzIwMjAgODoxNCBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IFRlc3RlZCBvbiBOZXRnZWFyIERHTkQzNzAwdjIgKEJDTTYzNjIgd2l0aCB2Mi4yIGNvbnRyb2xs
ZXIpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFy
aUBnbWFpbC5jb20+CgpDYW4geW91IGZpeCBhIGNvdXBsZSBvZiB0aGluZ3MgZm9yIHlvdXIgZnV0
dXJlIHN1Ym1pc3Npb25zOgoKLSBmb3IgcGF0Y2ggY291bnQgPiAxLCBwbGVhc2UgcHJvdmlkZSBh
IGNvdmVyIGxldHRlciBpbnRyb2R1Y2luZyB5b3VyCnBhdGNoZXMKCi0gZm9yIHRoaXMgc3BlY2lm
aWMgcGF0Y2gsIHlvdSBhcmUgbWlzc2luZyBhIERldmljZSBUcmVlIGJpbmRpbmcKZG9jdW1lbnQg
dXBkYXRlIHdpdGggdGhlIG5ldyBjb21wYXRpYmxlIHN0cmluZ3MgeW91IGFyZSBhZGRpbmcKClRo
YW5rIHlvdSEKLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==

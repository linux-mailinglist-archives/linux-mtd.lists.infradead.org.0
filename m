Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B29B1EB7C8
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jun 2020 11:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7UF9y/cFpI1i6WQaou2xFZIlUZfzETmVwWKugDHVaQ=; b=enkpaeEcNmaY6a
	c+kjiWriBL575gxKoGn8TKyXXcT7wrC2XqALgwaBIpILQIpvsqQ/okTr9ptBbbQ62zus92akCknJM
	O0NaM7PGSdXubzHPiYuiyFxE/SYFh0unFuSgM83L86e1qeiShpHrtcDmRNUtoSaZ2CePOL3DKxYWq
	0dg6RafQFx9QfaGVWDtuYI0VgaMD9+hE7uwisRUl3dzc0B8eG2REhO8HNTucc+oE9DlCpj9YHzjPw
	SoSiYj0hnS4SVPpKUCyig5DuuQUflYSdyt4iTJ9tCozC6x/BiuWHObgEAYGSCta2Pt3JmNGYlDu8z
	ww0KVd4gp6z9MEKUTqNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2m6-00044G-9f; Tue, 02 Jun 2020 08:59:58 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2m1-00043q-4I
 for linux-mtd@lists.infradead.org; Tue, 02 Jun 2020 08:59:54 +0000
Received: by mail-ed1-x536.google.com with SMTP id k8so9461778edq.4
 for <linux-mtd@lists.infradead.org>; Tue, 02 Jun 2020 01:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3H7xUAxDIV492pf+xpLGSX23/17GnpDs0cq3NBGktLM=;
 b=rhgsM9iUAuh9JU1+ADlPV/IhOgbmy1ylfxitvFBlq987YnbyFO+CC98BD5g+fMxeTJ
 rr1zQT0K5MxkqbWNtDSydlH3xQyJWWJq9qJ75KesZxnCdP6HKvi5e3XCYR3xrV3mKI0M
 bnOP43YOoOYMEWh1AzhASUolMDLPyYjvRKLcu8oWo1UrU1j10OQEghsHI6PzVkYJcbev
 w4fV+1OpIhp+PdbBg06Qh9jE3/keJn2djpt8D6ujIIX2Ez0b53YD6yuH49sf24w+6Lk7
 yee1ADJCQlN+1ra6cvLzrVZ0imASeuY7bVn6H7jVkzS+Hq5CAsWtMgPXwh2JAoniZO+s
 2YWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3H7xUAxDIV492pf+xpLGSX23/17GnpDs0cq3NBGktLM=;
 b=U9OjuIfr9v4BgCV/B44cBodG5WfXj2JKjJYikQuDXI5Ldyow19R2F8AMX7wncbiv8E
 gMWsSWOPqSwpRNQKhROFBphwU1tYiIZ8hQPBhwbL+95x3UtQsqODLnpwVoj49k+h7xBJ
 DUD5sU34keMA0deA/f2tsO9noZMZkLY7KlBKHYEW4WjQpOTkQtDZUiV+oQeIeytA+0oU
 UOBKPkImsfxW1n3LLS46yx9EyEbUs2qd31GHN2NqTrICuvwR8CmL8LyM9xvOQMBkqkiD
 3+uq5SkhIPtYWaa32lQygyGR10oYyMM1DI6nGb/QYywGbKoadgb2npKmTEL4bny+wZrm
 RHDQ==
X-Gm-Message-State: AOAM533A3gup8rdPGZWE2ibe28w5XIaL4P0xSigj6P+x1C7rgO9tRn1+
 szyZ8ZwV4iXk+z+YdcOOHrA=
X-Google-Smtp-Source: ABdhPJx2NTksfyGytSlAr7jnghHLiOJQmPA8RgLMrtA2/H0poqMIJPzAz7P+wn+rfYKXR8h+wyT0YA==
X-Received: by 2002:aa7:cb8d:: with SMTP id r13mr24946658edt.12.1591088390713; 
 Tue, 02 Jun 2020 01:59:50 -0700 (PDT)
Received: from ubuntu-laptop.micron.com ([165.225.203.62])
 by smtp.googlemail.com with ESMTPSA id b16sm1222984edu.89.2020.06.02.01.59.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Jun 2020 01:59:50 -0700 (PDT)
Message-ID: <aabedbd547708a52b8bf8e0d10ba10e994acb54f.camel@gmail.com>
Subject: Re: [PATCH v6 0/5] Micron SLC NAND filling block
From: Bean Huo <huobean@gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Date: Tue, 02 Jun 2020 10:59:46 +0200
In-Reply-To: <20200602094825.26396b06@collabora.com>
References: <20200525121814.31934-1-huobean@gmail.com>
 <829d76189beff5a50ddc56123d22bff3aa6a3378.camel@gmail.com>
 <0a4fc94213ca5c2040796a66942f626587483721.camel@gmail.com>
 <20200602094825.26396b06@collabora.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_015953_185554_ABCF7F6F 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: vigneshr@ti.com, Richard Weinberger <richard@nod.at>,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, derosier@gmail.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2020-06-02 at 09:48 +0200, Boris Brezillon wrote:
> Hi Bean,
> 
> On Mon, 01 Jun 2020 23:10:43 +0200
> Bean Huo <huobean@gmail.com> wrote:
> 
> > Hi Richard 
> > would you please help us confirm below question??
> 
> Miquel suggested an approach that would allow us to deal with both
> JFFS2
> and UBI/UBIFS without having any FS/wear-leveling specific code at
> the
> NAND level, but you decided to ignore his comments. Sorry but there's
> nothing we can do to help you if you don't listen to our
> recommendations.

Expose this issue to FS layer, it is not good idea. that will impact
more code, and involve duplicated code.
> 
> I've been quite disappointed by your behavior in the past, and it

> continues. Recently you've taken Miquel's patches and claimed
> ownership
did you seem my recent patch? you can ignore that see this.


> on them (probably not intentionally, but still) while you were
> clearly
> unable to rework your original series the way I suggested (which
> Miquel
> did after seeing you would never send new versions). 

seriously?

> And when Miquel
> suggested a change to the implementation he had done based on the
> discussion we had with Richard, you decided to ignore it and pursue
> in
> the original direction. So, quite frankly, I'm really not convinced
> you
> can conduct such a change.
> 

As Miquel mentioned, we need richard's final comfirmation,
If he agrees with this proposal, I give up my current patch.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5940D9CAD3
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 09:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jar6AKOc37Kj3l+jVbxDFBIUtrbEk9Cp6PxQe6DCTg4=; b=NkK4oR/6li3kbZ
	Qw5tjSASt1Cgq2tx3aBJrziezHvc2UQw+m/h3uSl1erOEs+r9D42tgeeJEwSHf5gBf7nKV2ZOzZdK
	DnPD2Jmwv2DNtcXJ9QYDu81polsNAKVHzSgigSSkPgChyBAp7PVsfFWkUqNaiRF/LzY54jbYYvXlX
	oKNcfoRl5/8y7VRMG1H8g9OA6t3XXxkty9wo4Xa7x1wbWNuQ5zFeHH9JtEZheBBco/64r/TQJvsUZ
	GABquw6DJBlaVDlqYK5Fm5UPTJXzsLB1H/jfKUKawPzYMBJWUQ1zYn0WE76I1sZRgOhoWDjFW9D1+
	YbP3Iu9ZAkr11kug0prg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29eo-0005px-UD; Mon, 26 Aug 2019 07:43:18 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29eb-0005ou-9N
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 07:43:06 +0000
Received: by mail-wr1-x434.google.com with SMTP id z1so14271135wru.13
 for <linux-mtd@lists.infradead.org>; Mon, 26 Aug 2019 00:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CPfJYNj/vr8qfYHczQg8BMzBP0ihy/vaBIvutGAAoEE=;
 b=hgwNGXBf+8znUmyPRGAVICDDTM5HMTd1h5qTufue0bN99y6UnBPAKKnwv2Ot1E8pmV
 GCvfij2LUhwzNQoYA2IYXMooV/Zq7FANyVrV4WhAAht0o1mzpJxsECBSBXJ+ic1es05W
 Gb3PGti3Ea+phnvitToZhG7znFhlh5VxtggtTP8m3VF6xVnaNJdIJWn4GrIHkbv2hKib
 Qx7qkEnN1P+exNdibWtLbov4I6MvrlddhITvbCtKzrC/T9sDILVMNikhVcA1efFlUVss
 Us5mtg/qXbqNwz6pkfIKa1+HOdhdgaV6IfosAP/pVNzN5TGofy445t0JVm9ix9xuVnAD
 uBlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CPfJYNj/vr8qfYHczQg8BMzBP0ihy/vaBIvutGAAoEE=;
 b=Hf7R0aPS6RQbdBOVbILznYXYHAlzReTYqYLIpTfX84z0vMqao6Tbh56DpAsdADEbk0
 p5ROCNwLtPwH4RoGIrsIZsOjDzhtunHdsP9uEIZ880orXF62hNcZyaMR7ifnqMPbTgwG
 7Rys79g677wKbeAiNky994vL5bEA3kr2EGIOfPpdSJjcGS7xdsUGq97zIFvn3LqMVAws
 67hG6uedAQ9yKmdTCZ39I45PlGJTqUxyUdm2pnnrAeV/6bmJFJPojo9nMm13PwcTzArW
 WEkfQlSYoqi9FcpJZe9S3XWDUm3LzrN5eqddroX309GjTHUXCOthNgYANc8DAkx9cR/y
 XKOw==
X-Gm-Message-State: APjAAAUgTLZya8REJxHbowfnCCNQZfVJ8MwG2bdqxLtQLWiBQIOf/+qm
 ln9x1LO9Nhyd7S+OPkvkoqAfha2aNgSp8+UI+mA=
X-Google-Smtp-Source: APXvYqzuwIuP3xdhcGEytAtOSYnpp5tmkqm02ts8+Jl2G9gF4Nk4Jfpw8tkX80NV4onSdZ6OoO2W7/fNpWEPJCFV5nU=
X-Received: by 2002:a5d:53c1:: with SMTP id a1mr20770337wrw.185.1566805383875; 
 Mon, 26 Aug 2019 00:43:03 -0700 (PDT)
MIME-Version: 1.0
References: <e8bde724-46fd-4264-ea3f-a84a792bcad8@fb.com>
 <236e95be-a2cd-3b44-36c5-121678f7c009@fb.com>
 <afe2b8f2-d1be-4cd2-971a-b13c1e38da67@www.fastmail.com>
 <CAFLxGvypuPp_Q_31DpKmfqte4uxHfYiQ6KvT1f2LGo_y7EvKfw@mail.gmail.com>
 <ba3f204a-aa11-4a81-97ab-cf8e7eca7e94@www.fastmail.com>
In-Reply-To: <ba3f204a-aa11-4a81-97ab-cf8e7eca7e94@www.fastmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 26 Aug 2019 09:42:52 +0200
Message-ID: <CAFLxGvx6RDvzXC57DeqyfMkSxCo3-0kr=uJebR0f6VsY0pUpfw@mail.gmail.com>
Subject: Re: kernel BUG at fs/jffs2/gc.c:395!
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_004305_353324_C6D922C3 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tao Ren <taoren@fb.com>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 2:32 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> On Mon, 26 Aug 2019, at 04:53, Richard Weinberger wrote:
> > On Wed, Aug 21, 2019 at 2:06 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > > Looks like a lack of robustness to filesystem corruption to me. LWN
> >
> > What exactly makes you think so?
>
> It was a bit of guess from a brief inspection of the stack trace (that was probably
> unhelpful in the overall scheme of things). Sorry for the noise.

No need to worry. :-)
Without inspecting the image it is hard to say what the root cause is.
But I suspect a runtime bug in jffs2.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

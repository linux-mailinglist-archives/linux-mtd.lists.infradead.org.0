Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B171F1E5F35
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 14:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXMoBjs2Zwrbb0+TR28Jy7GHIkroW63NYSMmg/kQjH0=; b=OK7XoDHYIr4gz0
	oq4PWjY6uqux/Bp4S0/ARbatIFLQeuMxOiC7+IAR4nNXu5pQEIsXOaVuMrk5UAZpwmFn/3GDlfCwK
	QY3npi7SjtwknyWjxFBp/mX1+SiOmGynTH9a51jVgejd5Pg6vZky0Oj4R4IkcuVJji4A0B4VgcHVD
	skRsLy6q5P+9oB9qAdrMsu8yAu0x2NDh9FzLgusvkfgGi0FNzOjf/9snlzoNHsmAL1XqOSGC0jRhK
	uiJ8BINdixYTjE8EzP2+G3F9LR+KzzE2riY/7JaxtaFx1D1gD18CnPVGa35L6ooj2/U8jP72+HjcK
	NI473ZrYWShusa2UZmaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHD1-0004Qy-9e; Thu, 28 May 2020 12:00:27 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHCX-0004Ku-GB
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 11:59:58 +0000
Received: by mail-lj1-x244.google.com with SMTP id b6so33051056ljj.1
 for <linux-mtd@lists.infradead.org>; Thu, 28 May 2020 04:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JmUDbRdWnFX3Rob4B0QvCGfA3VJF+c7F7awpUudj+ms=;
 b=IqZ5RFtIvBjwnF1oMxfDsISc3/SF4HRrGWAVls6NFHl9jYWj5LhLFY+T+P/SLCDs/P
 Kj/LUDgERqB5366gEneqW0blH5AzlNjmQXcGhmp7spRhFlumHJ4m0Esqlgvq4at9sUcH
 eV92SEgJ7wyidXnCw9zbikM9VIDGIxDvAJDmqW+5ZTNxXDKrWBJ9NqeV1FhETBRDIiD5
 EzVI/QKFOk+c8HoZDbuWlftmetLHYNIIakPAkN9beIBq4x3CWhLW71Sx7oXtU4cTXl//
 JORy8FG5YOPaf3+0mhl9VRiQdUw/KITQNQvBpbziB03HaUtPlTJ8AvDecEgbfPc8uNuT
 JboA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JmUDbRdWnFX3Rob4B0QvCGfA3VJF+c7F7awpUudj+ms=;
 b=Gft5H1wKZo8wtpjGXni3Cb0Y40dCO/yLqQw5srSmwLaY16rzzqpEeSAn5TNisWvs9b
 dhJHRMRK4nq0EAWgj5Xc87gYvrcJ0WcsuUjG8GI5oTKdFJUaV4WpVn1SxIueln8gSr2S
 BmvMvYzLZ3GopzGcp2+srBsNBszXQ+38EEfOK/uaM8Dc5MrgsVH5uZp0gu9R9QK+1k2R
 ov5TIaZrIqedqhKLbNdIJBD83FdCLT2/vwQ40G7pp7PAfImXuUKiZ+c8bYC0CMqakBN1
 X1I8iTjov3cHCvwBM24AfSCp4tBINq3k9Haj7uEahnl3+B9JKt0tCXCcceqK5OKpmA6C
 ZbpA==
X-Gm-Message-State: AOAM53352mLoAMIVnLFiRIEWeZtBzBYhB44VDChXKONSWwuslo9f4KOG
 AQ/kR45pb9O5qAij+r06PEtjg+sGUIUEevqp+nTIsQ==
X-Google-Smtp-Source: ABdhPJw8GtTv+/sAxbto1YqqIvEBT46TYNkrZQQEeMUqRroN1vTaBL4E2sPM8eYDKji+VyijdekgVQK1D3k+XjeoHAA=
X-Received: by 2002:a2e:3818:: with SMTP id f24mr1244505lja.338.1590667195145; 
 Thu, 28 May 2020 04:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200528081003.238804-1-linus.walleij@linaro.org>
 <SN4PR0401MB359826C471B9D331DC79E4EE9B8E0@SN4PR0401MB3598.namprd04.prod.outlook.com>
In-Reply-To: <SN4PR0401MB359826C471B9D331DC79E4EE9B8E0@SN4PR0401MB3598.namprd04.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 May 2020 13:59:43 +0200
Message-ID: <CACRpkdYXaq-JQ=buuSgFOT=DbqS7xsb0iXfc5aFYjg36hB2fTw@mail.gmail.com>
Subject: Re: [PATCH] block: Flag elevators suitable for single queue
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_045957_564754_35C58647 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 Paolo Valente <paolo.valente@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Ming Lei <ming.lei@redhat.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 10:26 AM Johannes Thumshirn
<Johannes.Thumshirn@wdc.com> wrote:
> On 28/05/2020 10:12, Linus Walleij wrote:
> > diff --git a/block/mq-deadline.c b/block/mq-deadline.c
> > index b490f47fd553..324047add271 100644
> > --- a/block/mq-deadline.c
> > +++ b/block/mq-deadline.c
> > @@ -794,7 +794,8 @@ static struct elevator_type mq_deadline = {
> >       .elevator_attrs = deadline_attrs,
> >       .elevator_name = "mq-deadline",
> >       .elevator_alias = "deadline",
> > -     .elevator_features = ELEVATOR_F_ZBD_SEQ_WRITE,
> > +     .elevator_features = ELEVATOR_F_ZBD_SEQ_WRITE |
> > +     ELEVATOR_F_SINGLE_HW_QUEUE,
>
> That indentation looks a bit odd to me but for the general concept

Yeah it's what the EMACS default "linux" indentation suggest if I
put the flag on a new line, but I can adjust to whatever the block
maintainers suggest.

> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Thanks man!

Yours,
Linus Walleij

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

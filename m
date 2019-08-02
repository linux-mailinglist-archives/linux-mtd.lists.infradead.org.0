Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0D57FE62
	for <lists+linux-mtd@lfdr.de>; Fri,  2 Aug 2019 18:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SrUJwt240S78pVkIk3o6CsWOusZGvo0HxXeNQojm+Wk=; b=T27BRs0aXwTYAK
	d/t0NOdWXDvhkanlWMbwz06ertRCNw6jm70gEiQfR2Lh6ghCDtzvLrtdzi1FG8tGLNhp+C2sgiUmn
	uFwyDafw+k1aw17ZnwxOniAqK5YPx+GoIb4YSp7ZpVoImTWmc7ZcljOdN2HT8++TOX3zRW6RG5OMb
	IxAoxXdvgR2k9XzxY03Z8wYvAh0650bU47aiH3JrvY4RMzMHActBt34BoWPbEseZ2QfcIEf3ZXA5P
	OPcFmgmZttwN5JllCZde43/3jefdK2zO+Xh/N267bTvdaDAEhR2grH9HcKjSEZrE+ebIH2qCgq+c4
	+JVIwkadFbEXoIK4qSSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htaD4-0001YC-J3; Fri, 02 Aug 2019 16:15:14 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htaCy-0001Ee-Bt
 for linux-mtd@lists.infradead.org; Fri, 02 Aug 2019 16:15:09 +0000
Received: by mail-lj1-x241.google.com with SMTP id y17so48827003ljk.10
 for <linux-mtd@lists.infradead.org>; Fri, 02 Aug 2019 09:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9GlZ30mVYJacTeb3O+3rFrM/EIjSay3k70MKr0AYksM=;
 b=tjceON3ll70W5d0Rf4KoIwMcBMB7bISd2CzXpEv/YlilFXRVN2NH2tHBcObWZoWq0m
 zmhDPw6crXfkkuwC9ftUvEs7w9GQERlv+nhjcLYYL/e+dczSYBmc7IHnmTr4Ld/6SWRF
 AI31X4SP5a9yh0haDxyZ03Oop74KHEdURXLpuj94j1bolbDBwUl6mNgHn7nRqxEq3nCT
 +fDPOkDninwjQhRH/l8vaWYk/BWy/Ft6zcU0pOchrVNV+4rTRhKW9F7dV/0x/WW2AMQe
 mfbqWxlOBHz32oYBOF4ZcwyB6VHLlCa5RBjPOZFoIzbe0dWXU9s3Snxy6rqI1QWgiybQ
 D7+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9GlZ30mVYJacTeb3O+3rFrM/EIjSay3k70MKr0AYksM=;
 b=SgO6Dd7eToQWgWHrtDmpHVuoINPeJQCHm8T4ltAZuDOrOGQ4ZhcdXoeEF7UUvAKdht
 quMKfHrS2rSoIYbjrpQmu5h6nW6LAHaH9D8PAKQJsMr9Z5VtuKBmc9XvHzaGb9Bu1Mja
 cIcT/MTjo/VPK0I/u3SciZPYwKbguJE2ne4XcFfLhltXPPV4H3sOrzPYeFnS+6++AORB
 dqcpGLytgqwpNaRJ8+dl2JB6ke0ksslx7auaapjY/r09FU4DXEliyO/aBlQ0DwD9xbsE
 Gre6qg5xtjfO+egSDhwur8/NwnP/xEQGpwpiT6rL5eTDK6gKX1H9FgGVjS0QvohMkcVw
 SP/g==
X-Gm-Message-State: APjAAAXIAgCaGfoUtmsYuXn2+SZ1wuxjp2qjeqKAIxjXAUHposO/xUVl
 Y5wfm1vJTdfBbiqZSMF2qF6zE2PtSn6LQevtNOg=
X-Google-Smtp-Source: APXvYqxJh10FqymspDK7kuw3Z1YOL50yOieKeDygsJI6CVdmBLbnrjItkq3PLxK2E3i30mWuvELiYxUFKESalAtmm/o=
X-Received: by 2002:a2e:9b57:: with SMTP id o23mr1012596ljj.67.1564762506135; 
 Fri, 02 Aug 2019 09:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAMxq0fNSWrUFMmmTs8Ri9gFOvS+KQJvZN3-_KuiqXi9bbmCB0Q@mail.gmail.com>
 <CAFLxGvz92UR2M7KJ_dMMW-F47_pLLxSTOrGwdQ5Cc0kuSiTA8Q@mail.gmail.com>
In-Reply-To: <CAFLxGvz92UR2M7KJ_dMMW-F47_pLLxSTOrGwdQ5Cc0kuSiTA8Q@mail.gmail.com>
From: Sergeant Peppercorn <speppercorn109@gmail.com>
Date: Fri, 2 Aug 2019 09:14:55 -0700
Message-ID: <CAMxq0fO=0P8972FKvscmNxCBxq0m8_f2DST-Oa9HtNeUA-FKsA@mail.gmail.com>
Subject: Re: UBIFS ECC errors
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_091508_433777_D262240C 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (speppercorn109[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (speppercorn109[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi, many thanks for the reply.

I have seen posts on bitflips in empty space issues before, but don't
remember seeing any fixes. Does this mean the kernel UBI drivers must
be patched? Can you elaborate on what fixes or where to find patches,
etc, or what to do about this, then? All I care about is getting this
to work, and hopefully without needing to reformat the root file
system on 50,000 units in the field.

Kind regards

On Thu, Aug 1, 2019 at 1:04 AM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Wed, Jul 31, 2019 at 6:24 PM Sergeant Peppercorn
> <speppercorn109@gmail.com> wrote:
> > UBIFS error (pid 1): ubifs_recover_leb: corrupt empty space LEB
> > 7:2048, corruption starts at 2241
>
> This is a good hint. Can it be that your empty space shows bitflips?
> In the last years many drivers needed fixes to deal with btiflips in empty space
> since ECC cannot fix these.
>
> --
> Thanks,
> //richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

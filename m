Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60C7F77F4
	for <lists+linux-mtd@lfdr.de>; Mon, 11 Nov 2019 16:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fu4PExfecA8g+QiUxLVF1VngIly2G2gjIeBG55IVeWs=; b=CCiKa7BxFibLBU
	Gs4Sgt3l8DPR6hHQI2mMCsCD+HCXO7XPEaprGudnnbA8oHHEzcImfm34Nssurm7/btR4V6XLpLxSg
	WcZqZ1qy2LhSvowlXrxlPkkLXMNCI3iLuvN3WJVsqJKBDq2Wbji/oJ2p7IWmK90hF2flr/w9796iA
	TqxZt9mTLyaWQB1gvihcqp2hf0DLbxj+DpSpsiM0uJWV7+kfcBC9W13nHFDyfXRjxJR11aEhytKK7
	ITEsUeZdxk3wb7Ik+MuhSKUI5f8BKyfxQJWylzfqPjQFy6YnZhiLXyqSfeHKsSOLKN6DSc/pKpr5N
	RgQ0q+KvPx8svemgSucQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUBqu-0002C2-9x; Mon, 11 Nov 2019 15:43:40 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUBqi-0002Ad-M3
 for linux-mtd@lists.infradead.org; Mon, 11 Nov 2019 15:43:30 +0000
Received: by mail-oi1-f195.google.com with SMTP id i185so11847816oif.9
 for <linux-mtd@lists.infradead.org>; Mon, 11 Nov 2019 07:43:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z6HV/05PdJu45/hjcLEgqCV/MZrUUiKc/hGTBlNfe2o=;
 b=THkkjmHZXzvO4QOW0WhSwVHLPk1feJBj7S6F0PES+KxyVKXhdVo7gzJO68xl5rmVcI
 pVA0oQEqu3Gt2RrNP1fzNF47vvc6F6wH0ePI/A1V5bWUlwnx4CH2PuDqaNTZWcaxn61O
 RaBbco7lrilrRfNLpY4TCGSXeGhs7bph7sBWkxAIV5DoX0Y4+G2C9GXLUnLZcm7lNu+j
 RiZ3DlM7iqLjAwt2DZl3n009oafnkBD8F5ah60w10xOVXY/uDiwR9I09p6zy2zpZTEJv
 ZlGTTMcHXHFvNvoAeDcnD6HYWiG6vIoT0I/awqrBn3RtBbVkS3ljMJgJBgySK3phI1Cb
 Fl4A==
X-Gm-Message-State: APjAAAUn5t9/MytsjcOBPZcUKt+LfTnfI0j/kEwOy2vyCtFkvaRX9sTI
 brIke5P9oydpZ8jufyKLPp35twYHZZpfRklKhR8=
X-Google-Smtp-Source: APXvYqw4gi4nZZm2xB7kPcwoljXBgj5176ujC7Yt4McOjXIfa4RgNiSfcPXRGbvEXmIiQzj40xZCa+zJEl1fnriA0cc=
X-Received: by 2002:aca:882:: with SMTP id 124mr1163674oii.54.1573487006964;
 Mon, 11 Nov 2019 07:43:26 -0800 (PST)
MIME-Version: 1.0
References: <20191111151344.7401-1-geert@linux-m68k.org>
In-Reply-To: <20191111151344.7401-1-geert@linux-m68k.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 Nov 2019 16:36:18 +0100
Message-ID: <CAMuHMdXenPQJQn1qVL494cB89GZAcZqXMVhw4PW+ZgSqdgtAyQ@mail.gmail.com>
Subject: Re: Build regressions/improvements in v5.4-rc7
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_074328_720146_648FC173 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-s390 <linux-s390@vger.kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 alpha <linux-alpha@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 4:18 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> JFYI, when comparing v5.4-rc7[1] to v5.4-rc6[3], the summaries are:
>   - build errors: +0/-2
>   - build warnings: +48/-70

  + /kisskb/src/fs/ubifs/orphan.c: warning: format '%lu' expects
argument of type 'long unsigned int', but argument 4 has type 'ino_t'
[-Wformat]:  => 140:3, 132:3

s390x/s390-all{mod,yes}config

Why is ino_t unsigned int on s390x and alpha, while it's unsigned long
everywhere else?

> [1] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/31f4f5b495a62c9a8b15b1c3581acd5efeb9af8c/ (232 out of 242 configs)
> [3] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/a99d8080aaf358d5d23581244e5da23b35e340b9/ (232 out of 242 configs)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

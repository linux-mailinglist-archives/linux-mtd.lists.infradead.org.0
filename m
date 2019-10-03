Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C273C9F66
	for <lists+linux-mtd@lfdr.de>; Thu,  3 Oct 2019 15:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tty8vxtOD5aXPz9u/1BopPgOqBr7lO1PvUVO5aaPouw=; b=jd6vvCqdkOiFbP
	i5aIu8mm1FPu/Ap4kibe7SyPxsCr9K2tJ7YyGJBrzFoUyMFexvxRfcPuqqlq5e8zNgA09H1lY+cFW
	ueYTvmNWwci96x+ScXv1X6DGiC6147NEfVXPhClmmedGTh7GRWUGoYnxd9PU2dKzBF4eTeeZjO1Jj
	U9D4ra/BhEmMCKP9TPeoi4L9p4Qfi2jOgRkyJEaEL9f0xokfawXn42ntAQbe/Ch8SKKB+mZhtGUE+
	N4VZLs1G2CrGHk/S6um9CTwWWh+mMrNDdjAg4wa8+rydgRcJGUb+OU23BhdMCuuUV3rl/BLxk8/c1
	w0BFMDMHEEN5+ceeYt2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG19c-000371-I0; Thu, 03 Oct 2019 13:28:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG19V-00036X-2H
 for linux-mtd@lists.infradead.org; Thu, 03 Oct 2019 13:28:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id a2so1771532pfo.10
 for <linux-mtd@lists.infradead.org>; Thu, 03 Oct 2019 06:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J1UHPup7i+2qaOgGmutf+UhosTInRD4AK3tDT0/szLo=;
 b=J/nUlGknJvw2kzCvIXzksmjquA0cAc1U2jRkEXyzL3AixzO7QjnmnmeZlpN1uGgRXf
 4KuSOlgXTZhIr3asyNGQPr3qoK4i8j9LM2pDZnNKchjIF+vsAkmM8TpVqnyjO5fYNbO3
 mYC7G1lLNoEbivs2sVXAO6E8N5aa0pm6BwtPeP9r0vaXZZnxXLfvSnKx6boFufbV1bt1
 PFd/XanV9Bx5jdXvaux0I7txi3BwXKy+nJZZ3xaYDZqoROIBlI3/x76Ez2AHqLleBKaq
 X3FRzWtzv9sLmRN4KM7yJOAYjCqGqkJ9Mx1SG97fV2STnrzvGr67gbVMEeHTflpEmXAt
 d1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J1UHPup7i+2qaOgGmutf+UhosTInRD4AK3tDT0/szLo=;
 b=LA5b6YxII1q6jjD3O0D5KnR7rp9HVFl/iBt7CakduTpXzIiVh/3pBrngVKLHm/vr3g
 5T+TPpHX2jvjaTYNlIsbVRKXHoQ4VlT60mJkJP3+YdxRgJ9KLs1ErjZiZtD3lxzgXdso
 ltkdPxyDxKwdOxKDDGUTW0y5gdiRSAkLi4DhN4367ToC8JFXmVG6uHyVa1PkO57L8lWu
 8Z21YQK9f/CY28gxUSenWJ5S710sIbYYRgsS60SdAi6371TqXpQqg1ICRhequtA2RZiM
 DYtxXVREhz4tjngawa8SOKV7AE/z0lSZol7KFjkAfysC/iCuS4BMkhX9yYGIkoefWj5d
 oyBw==
X-Gm-Message-State: APjAAAV9dHt4iD/CuSwXfR4aV8+uu0Ano1dBnjIjijhvJf7WS49y6pFk
 XNW+UruxNZ/4msG9BVYZPSosyPGq/7uRH5UyCwY=
X-Google-Smtp-Source: APXvYqy4ne2IRdes6EDNvv63ai1Um+/LVF3MgydiPgdFcHCCXA363TPNYI5ETB7CCj92SiLOjBIBCbgPZZwh95hEd8c=
X-Received: by 2002:a17:90a:bc49:: with SMTP id
 t9mr10534007pjv.21.1570109296321; 
 Thu, 03 Oct 2019 06:28:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSR52BJB4+k2k4CwLTQUVmvJvR=bjRx6kqe2aar-PH21w@mail.gmail.com>
 <CAFLxGvxg3dYoiiTy7=vNwC75s529akqx0DO3ozLrP_TbhATr_g@mail.gmail.com>
 <CAA=hcWTzAMU5GvGzcG2Ha5RH_=QUTEAa3gZkMoe=cgtZGG+h+Q@mail.gmail.com>
In-Reply-To: <CAA=hcWTzAMU5GvGzcG2Ha5RH_=QUTEAa3gZkMoe=cgtZGG+h+Q@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 3 Oct 2019 15:28:04 +0200
Message-ID: <CAFLxGvwUK=hb6b_hX8HSTVzAZW7djBL_3bRWvTXcVUw+FuBTmw@mail.gmail.com>
Subject: Re: How the bad blocks occured in despite MTD manages the bad blocks
To: JH <jupiter.hce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_062817_111828_89A0C0F6 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 1:14 PM JH <jupiter.hce@gmail.com> wrote:
> I was told by hardware engineer, it was broken by bad block problem.

Did he inspect the filesystem in detail?
If he said so based on the same information you shared with us, it was
pure guesswork.

> After those lines, the boot stopped in an emergent mode in a prompt to
> suggest to log in by Ctl-D, but that could not work, I was not able to
> log into the file system, nor can I get kernel log. From your
> experience, what could be likely the causes, hardware or software?

Without logs I cannot say anything, sorry.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

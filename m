Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660EFCCCE9
	for <lists+linux-mtd@lfdr.de>; Sat,  5 Oct 2019 23:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+l+i+OXn1wpK5J2qOH9ti/YSh8W5xuNtcgCpmeTgRkk=; b=tYPcBWOd62f7Bh
	GH9Fgp8b77vOk36d97fzgrVN/FW4LglT+o2ou/ChAokl69vynND1QyMrTdyzJAAYZOHoWMqTWKRns
	4OqB3/cAYaHw+UK6n0j0FEpOpUBnENnTJxPKQXST5pX8mgBuM1TmMrWcPpkb+62fx26gg4sur+ab9
	P2mWWaw3vpxLyRQFN+W5uqKYyo1j5430TH31Un7g2Wwv0n8XJf/Qc/7EFDw4F+oiUcJ6AMZGzUrPr
	oJM5ArAdS/Ua3Q++5MeFJD+Oa4Osr5rs7b4+gGxjLEWSy5INEhHK1iwgLkBKRGauwPS/Bx+QgEpMa
	ebwglXrH20eujV12i83A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGs2n-00089J-LB; Sat, 05 Oct 2019 21:56:53 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGs2g-00088Y-Np
 for linux-mtd@lists.infradead.org; Sat, 05 Oct 2019 21:56:48 +0000
Received: by mail-io1-xd2f.google.com with SMTP id b136so20976373iof.3
 for <linux-mtd@lists.infradead.org>; Sat, 05 Oct 2019 14:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=d4ZK3fYkl4xN9cLJQB8PFO4QSdGbplJkD416+/cPTzw=;
 b=AKuFQrhCYRirgxZZzsG6l+j5ysC0Zp+dPBth0RMLTkFbUr5UbdVOZ6WBVICYRNmp/U
 z5ZCHz05/TNwxJLwz99kAH9xIASDWCRt6/OZxSRU1Fj6z31btL53N2V+Cmzh0ULsAZtp
 B33FMWKtIgXj5C86UiX0rDfaymo8Qh/qe9EmnakofOHk181yH6yX/VW+Z/+5hM1um5PI
 YDKMwjYFZkYK3EmBQTCHjZAkGE+l7w8KzqOljDg4FvOrNiK7OawYL/B8lirSQZC7OXkq
 NsOZjfFeL3eRkVhLH+4WdTMLfRGLbpnF2S0oOkXaxFT1dSCy1uMjOHDwFn2McQLyWBlP
 17Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=d4ZK3fYkl4xN9cLJQB8PFO4QSdGbplJkD416+/cPTzw=;
 b=j6zW3LONrGwd+vbr69V+f7bssrqGU+0Q1evzQmq4mDDzPOlpt60dzzYflDzrBNZ+Ao
 5VIt8JIxM64tN1iJHFbz9A4TU5g9kcz92mBv3LULdvCi/Ks4UFKfXCD+g4Xj9D1g0TKK
 gKVuES9ivnduMqd9DXCaW3wph/1nM+rZ6WVLXWM46h+hWrKnZFgZz6EjBuhyil2YSj2v
 7xGTdty/5gB5l9yhOZrzn2ES/mCDuRNCm5gDZhs0aIRnBQln6jD1SfTYCfkAxbdl4lfm
 9Xe/jeImnltUlRjBW/30DnUkTI0Z6zMRYzUxySCk+/e02aNghfb/+yQeismK2+uqcYNu
 3S7A==
X-Gm-Message-State: APjAAAVpdLwHCbKkKaHHu+LROm7BsPbHlNYkOb+lXriCZnRji3OyS9tQ
 BXk95hNbIzwT2qJvrQq+g/ZG9Y7Yh/zq6ICayUE=
X-Google-Smtp-Source: APXvYqxDw+6WtaH7JVy5E5+XywUjkJntxLiD0ZwcUh1bPuHwKkq2JqNXk7OAjfShgscaxqB8hn4LFGAt22GgGWFTtsI=
X-Received: by 2002:a92:8f19:: with SMTP id j25mr22226770ild.302.1570312602175; 
 Sat, 05 Oct 2019 14:56:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP;
 Sat, 5 Oct 2019 14:56:41 -0700 (PDT)
In-Reply-To: <CAFLxGvyWTSgCQz-wdM9KBR4t45_pBBzWUJSW3j09HyBy+VAmbg@mail.gmail.com>
References: <CAA=hcWSR52BJB4+k2k4CwLTQUVmvJvR=bjRx6kqe2aar-PH21w@mail.gmail.com>
 <CAFLxGvxg3dYoiiTy7=vNwC75s529akqx0DO3ozLrP_TbhATr_g@mail.gmail.com>
 <CAA=hcWTzAMU5GvGzcG2Ha5RH_=QUTEAa3gZkMoe=cgtZGG+h+Q@mail.gmail.com>
 <CAFLxGvwUK=hb6b_hX8HSTVzAZW7djBL_3bRWvTXcVUw+FuBTmw@mail.gmail.com>
 <CAA=hcWSYNtCyN460gw1LNJe3M2TCiXKUzv84_kCG3PO78BweDw@mail.gmail.com>
 <CALLGbRJKJYcwHKGML00GB9mWG7U_EjAnEUSL+HxmHmWXjZY1vw@mail.gmail.com>
 <CAA=hcWRwe9JOvuR0WZqWrDnr_gdXwXke0X6UXOmWC+K0nKsDpw@mail.gmail.com>
 <CAFLxGvyWTSgCQz-wdM9KBR4t45_pBBzWUJSW3j09HyBy+VAmbg@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Sun, 6 Oct 2019 08:56:41 +1100
Message-ID: <CAA=hcWS5ctErRzJXj0p5+-vVMzGc0U-JF27ZXkM-FMHZ=kz3Fg@mail.gmail.com>
Subject: Re: How the bad blocks occured in despite MTD manages the bad blocks
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_145646_801000_A87702EC 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Steve deRosier <derosier@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 10/5/19, Richard Weinberger <richard.weinberger@gmail.com> wrote:
>> [    6.057136] UBIFS (ubi0:0): media format: w4/r0 (latest is w5/r0),
>> UUID E9F1667C-8AC1-4030-BB1A-9C5341482A61, small LPT model
>> [    6.074491] VFS: Mounted root (ubifs filesystem) on device 0:13.
>
> So, UBIFS is happy and mounts cleanly.

Oh good, relieved.

>> [    8.732692] systemd[126]: sys-kernel-debug.mount: Failed to execute
>> command: No such file or directory
>> [    8.742715] systemd[128]: sys-fs-fuse-connections.mount: Failed to
>> execute command: No such file or directory
>
> Some files are missing but it does not look like a UBIFS corruption.
> In case of corruption (such as dead directory entry) UBIFS would cry out
> loud.
>
> I don't see a problem which points to the storage stack.

So if the UBIFS was not corrupted, NAND was not damaged, is my
assertion rational that software / kernel was not the cause to break
the system and device down?

Thank you very much Richard.

Kind regards,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

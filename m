Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BD3E701F
	for <lists+linux-mtd@lfdr.de>; Mon, 28 Oct 2019 12:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=myQKCpIdJGmQE2KyQzH/rXEQkKRXMeTOFTKFTikM1GY=; b=mm0
	vPxeMIOLRdmGDNKda/ZOj7MY1yxf5z0xe2F4x7MOh3fO2jffftVy0bpMl4S/BLIIxLnCURHGCKHJ5
	BeLXq80H3PWR97gtpD8TPrWhmpzGxUjB3T1qiADDsobr3a7ibX/naStA9QxllXuHL54YOmeo8K4hk
	f+DorYsQU1J21Nx48X5prPsrpek26yr8sg9nRDshHQd/r+H0dPjFOWjQ0zU+M3mKePvvdZx/Ob/Nz
	YECofWA4wwxR6PS83QySmcK5xmD4KBISi5IsIAVKqf7rPw0b2mjhxNPZxga/rCGos5sWUxGF1h7Gc
	v7xScQ0un9CC8oIdEQPKngT7K31XMPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2sV-0005f4-47; Mon, 28 Oct 2019 11:08:03 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2sN-0005ee-Fz
 for linux-mtd@lists.infradead.org; Mon, 28 Oct 2019 11:07:56 +0000
Received: by mail-wr1-x42e.google.com with SMTP id a11so9387633wra.6
 for <linux-mtd@lists.infradead.org>; Mon, 28 Oct 2019 04:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=tM7uAf0Tc3PBbuf2B/bbZjYKk+dXMfMCYwZhsMzCc8Q=;
 b=HZb7yFnE4XiLzt1K4SjR1i8wq9liwnq50qMVZPQ/x101sAoW36lTgMv45nNmhhhiQA
 GisWF8AqmRw4PF9YT/kCbp9MAFB8VoBB+3v3YDS3R8LevlSC7gFJA/cN3cf20fd3TkFx
 5QW2mIQ5vJwsy04fsYOwzxqRPSW6qXbo+7LQboiN/LQGmNmPOw/w9ZibISC5XplMPVz0
 9wrxLTWxqbgL8Ff7Tncy6GrlXAxAdQ3sL4fozBM5nrIHKZIFYFD3M5pLKqxPqNH9gy2T
 7UNRkDYQnjauk5e57uMLXjchCA1SwCfrAySCyLoBYWwS5u0XWItJxUGzz9tDb+sKNXT4
 sP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=tM7uAf0Tc3PBbuf2B/bbZjYKk+dXMfMCYwZhsMzCc8Q=;
 b=WdXft1/Mb4dVkNYW6OrwguH+ybRS6Co/n/rGuYk4Y/6cBX0RY3KnLkAQHC+tE5HhL5
 cz316EHNWnD6ldqgcl0K4yF0BB4LF2StGu4glOJlMfQqKZJvyxd1k5csTMADSn9JJkqj
 OjY9nl8q8vom/iaH5hxolDF2c8Fvf9uJ8a9Gb7tiOuHgo0B3dINIdcqE6QHiR5y1fFCb
 oqBK97BYc0zp0qXwjs5MYdRJ4AKw1wfpid/MiteDkUxPlKkZAtTAnfiQ1FNoMUMf8s86
 /dAi4LI68+CXUMQU0md+6KM+7+QH7gb2flvUttxt/wQqIPkr2HxmJKbLynTkDT/CkoNG
 o4bw==
X-Gm-Message-State: APjAAAW/PR8O3bikvIOyuKFux8RWpwcJ4qQ9jhfyxdGwY5OsBmiFoNDO
 v6JUie6d1EBlow26xrW37p+2b0Rg+SOgGTgCG6Dx9JxOZGs=
X-Google-Smtp-Source: APXvYqzSUqp19KmQcaJKwKjzc9ybPKEhjkqHXQSHlre5nma0tm5Xi359KElH0WJYaA/kJnP28f+xpPVfvaC6IH6zbP8=
X-Received: by 2002:a5d:4dd2:: with SMTP id f18mr13957672wru.4.1572260873473; 
 Mon, 28 Oct 2019 04:07:53 -0700 (PDT)
MIME-Version: 1.0
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 28 Oct 2019 12:07:42 +0100
Message-ID: <CAFLxGvzBdWWG96TKmWN=1Zqjk5SUznGHtQzx+RqYaHvUoTwqsA@mail.gmail.com>
Subject: MTD maintainer office hours at ELCE 2019
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_040755_554261_33057EB9 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGkhCgpVc3VhbGx5IGFmdGVyIE1URCByZWxhdGVkIHRhbGtzIGxvdCdzIG9mIHBlb3BsZSBoYXZl
IHF1ZXN0aW9ucyBvciB3YW50CnRvIHRhbGsgMToxIHRvCm9uZSBvZiB1cy4gVGhpcyB5ZWFyIHdl
IHRyeSB0byBjb29yZGluYXRlIHRoaXMgYSBiaXQuCk1pcXXDqGwgYW5kIEkgd2lsbCBiZSBhdmFp
bGFibGUgcmlnaHQgYWZ0ZXIgb3VyIHRhbGsgb24gV2VkbmVzZGF5CmFyb3VuZCAxMzowMCBhdCB0
aGUgZnJvbnQgb2YgRm9ydW0gMS4KRmVlbCBmcmVlIHRvIGNvbnRhY3QgdXMuIDotKQoKLS0gClRo
YW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=

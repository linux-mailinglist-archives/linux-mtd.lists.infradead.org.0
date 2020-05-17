Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5525E1D67BA
	for <lists+linux-mtd@lfdr.de>; Sun, 17 May 2020 13:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ptZ84cKo6eeBg9adcCSztSQCZIgVmhvAMf84Al0vXDg=; b=jAGsfh6+/aNvm3
	jX/jD7zlG1QszLMfcInbLmavUySSLwF7L9n0pKwRuH3huqu+dejveq5qd063PdZyyx5nv7U0AKVht
	C9KqOKDd5MYkpXDiXlgYOPh1nYJ7lzO/Iz0NS7bEma/TJSR6HOyH2q0CjPVXYH/QUsYZSHvEWWFnw
	NSwFf0DGuxKXaUVGVaf/bVJ0JBLuHAsim98hArgxPFw9+/2oWV47WricHqzNGz19WyVv+YDM2A50b
	u7xTEeY/8AKn+o/wr4O+07n2G2cvI1ZeVIqpEmNQWDkn53fnpCerlF2qkiqOH1TJJOXQpMYe6Tw5P
	Wtt3gEUoDwqGzpHsUNBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaHSY-00012d-Q5; Sun, 17 May 2020 11:27:58 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaHSS-00011m-J9
 for linux-mtd@lists.infradead.org; Sun, 17 May 2020 11:27:53 +0000
Received: by mail-ej1-x62d.google.com with SMTP id j21so1692025ejy.1
 for <linux-mtd@lists.infradead.org>; Sun, 17 May 2020 04:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=wFo4edMgiMvDCE2ZNhrsI8JxusUUeYELSKbsEkZuweU=;
 b=eYroECOfkbshRN4UHce19TarI42rYOPdoOO+Ae5Nvz54wRupZXnV/wp734PaIrRK0I
 Gwbbwr5pIrfyRL71CrZCuQz1hOOrysD7VYolrMJeWbTGk/r/cwk7z2kvL2SFp/NobJs1
 jbsyODoR/xA4Qtm6Jv3KSg+v8Kyi5Y1L+73MRedIKQkNlNwU41vWNU2jRyiNJbu4pVlJ
 FRtBNsCL8lK+huBmker8gzIrDYc7PtoP0tbPSF3YeI/99t+S9O+2S9Ax9oCd/Oy4Z/CG
 4Jf+aZD4U1vLPo64fMAPtSrs3BluE/GSPeaVvERlI0d+l6eHYm/WQhuormaWhcJF6NGc
 071w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=wFo4edMgiMvDCE2ZNhrsI8JxusUUeYELSKbsEkZuweU=;
 b=Md3jbPOxI90Eklpla01xmZw244ngFchNR/Z1nHQrzaUT7sBx0onjGuDJy6dDQa2jSv
 AESjRDgemrz5R96gY0eZ2rL89SF4LfxSGDWLbobja4Nyjihj0vvOC18lBIgnISsYe1eF
 JOkrdafxc5RtsTzb7eova+xnDgz29wAqnQXhKMFvFY9uK7Kwx0JE9vfDD5nAbGS1c2NL
 7epuakILgAOQ3gu15HJc7tGhPYqGMtUp3KB0W6K24fJtYeZ98UpV1BdOzVA/SGBbf00X
 Md9C4F+yP6yk+CwdA7a7kbhFjtJaHqj19fMW4cxqJRXPTaZ5d1zy7jcychvUyJ8sXypB
 lstQ==
X-Gm-Message-State: AOAM531m49N/YqdbsA4KDop9A4BSQNTn8GRmzi3ychZ0MsIddIXkwk+e
 HSMHngWbconFZiSF/T2MEksD5JQV8ZYX5xfmxd34kzPu
X-Google-Smtp-Source: ABdhPJzEzPGimMRiyAfg2Ypa5oq0NmZuWJm0dAmlAp0WVhFv98aBqUbL9NK3nj9Y8vhrka8EL/zGBz9rbOgRuDmRLvs=
X-Received: by 2002:a17:906:4c8e:: with SMTP id
 q14mr11262106eju.208.1589714864311; 
 Sun, 17 May 2020 04:27:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:a881:0:0:0:0:0 with HTTP; Sun, 17 May 2020 04:27:43
 -0700 (PDT)
From: Jupiter <jupiter.hce@gmail.com>
Date: Sun, 17 May 2020 21:27:43 +1000
Message-ID: <CAA=hcWQ8ZjjdzdTVtBas42L0_qbhJhayqogz_Gg5wgtDBVo+hg@mail.gmail.com>
Subject: Issue with 'ubi part' ubi_io_read: error -74 (ECC error)
To: linux-mtd <linux-mtd@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_042752_630133_E95A1361 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Sorry for a bit recalcitrant with the issue of calling 'ubi part"
error -74 -EBADMSG, is it MTD issue or u-boot issue?

I used Linux kernel 4.19 to flash UBIFS volume images ubi.img to
imx6ull NAND using following command in Linux:

flash_erase /dev/mtd2 0 0
ubiformat /dev/mtd2 -f ubi.img

The flashing image process went well, not errors, but in NAND booting
(u-boot version 2018), running "ubi part" stuck following errors:

ubi0 error: ubi_io_read: error -74 (ECC error) while reading 64 bytes from PEB 2
35:0, read 64 bytes
ubi0 error: ubi_io_read: error -74 (ECC error) while reading 2048 bytes from PEB
 235:2048, read 2048 bytes

The document says "The -74 error code is -EBADMSG and means an ECC
error. In other words, UBI tried to read some data from the flash, but
the flash driver found that there is an uncorrectable ECC error, and
returned -EBADMSG."

My question for ubiformat, how does it write ECC to UBIFS volume
partition when it flashed UBIFS image to NAND?

In NAND booting, how does the "ubi part" read ECC (DTB) from?

Thank you very much, appreciate your kind advice.

- j


-- 
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

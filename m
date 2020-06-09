Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFD01F3EA0
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jun 2020 16:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C8xWUMOn8uBezBZUcl68jAA9kzRm1hGLy9F1UfKUPyI=; b=bCt
	fusBmEP5ZHM7vISPvnSXrhlVMZCxdokOFz4gbnBpXMNgY8mkEhvHa6dCmFNzJFEcDBqWv0Pe/qEyw
	wPJrPuAhvOQo0bVzB0x+K2yzB7dNZHoVdRQMhnbI7S1SPt/8Q8jLZiqVfSB8ZUgNOh3KIIx/+81ix
	yvGryuqOvAQRLJSTJc+YQMQCirWwsfy0sb/FhLbgh05DWhVVMlJzprrjy3y6pVK70wRgZUG1Zvfpq
	aHuT5yYx3NCs9DJ+suN1+VvWt09B4zmGeQ/a+PU/ts1KojJALNqjy9oO6yUyxbbQXOZPtjmrHpUVM
	T9ExlIiFRGgVx3RndpjMozRkjkc6vWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifaR-0003sL-Jz; Tue, 09 Jun 2020 14:50:47 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifaF-0003rr-6s
 for linux-mtd@lists.infradead.org; Tue, 09 Jun 2020 14:50:36 +0000
Received: by mail-lf1-x136.google.com with SMTP id r125so12618289lff.13
 for <linux-mtd@lists.infradead.org>; Tue, 09 Jun 2020 07:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=jmnyQDAombzx4EDc6ncaG7HgVXHLVKZga5Shmv/iufY=;
 b=LB3VXZQJvT05H1DtGy+PnTKY9R0ljagfRExHWDoQi8iuMwIagZAw7T+9MWNf2jZSPO
 Km2VBlKvBwU++TvS9Z3qvRWYO/s7hEQMzDEiWuS5O7TbhXcZczRJO2Qd2U7omowHFoE6
 LMWgFMDzD+cpo9KEMlC+nRcFKPZMC3i140SIEU+65JBtQpmBc+SFald0PCiBCqrrW/z6
 d2aexjXF6eMRhd9ifj58+GR1n2tDfSqoUS8vUs08JNKki5V/SDFUsRexHIIEvyKBli8C
 rGR/3iXLjt+mvFa1X5BGkx5oZ44UZInYVEa8XzxRF7ClBYSml/6bConrcOrFgfe0LBtD
 3jVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jmnyQDAombzx4EDc6ncaG7HgVXHLVKZga5Shmv/iufY=;
 b=V52SO70Z2Iz3ziIoV5I5PsomKp55mwLejDTB4wE9yntPqKNtDgrkDaLJEbKkOAEBSC
 Zch4z3C6IcXZCIJHk8kOrQNwaFo2eD4aiRrrqip2gNxhByE8iIRTknmQ7QFiWPKEihWh
 4E9ysg4l97h95a2RKEDsnQWyFovFbztIlH1ORlR2Y9rCm3r4HlLoNV7awbkxrB7mUUdA
 YVV31Hq1IpWj56X40sOGU4aLT0900WEDxNeDrc56DcBJVJJKIVe6sDqYj3whSyx2Biz+
 GPsCbGa69uH5VIr6H3MK5G0/vPBzXVwza2BoSuXhbahbEQfHTGz7hyj/T1MpBmVwT9UE
 xJDw==
X-Gm-Message-State: AOAM531Pa91VN8ofHZweHURfeqBj/gFZOTPxqn1qfW9sucdzgk+/zFRA
 BEqsk4AVTMy6sMEa4zfihGvP633y3r/s1ddksvCHvl/l
X-Google-Smtp-Source: ABdhPJyKsS/IBiEWVv2nZcg2duvG5VgEe0bFcdjzczeBKz5nJiLZaAQ+1VCVJHkk75ixYhe7p5EEx7aCp+VqEzcHbaY=
X-Received: by 2002:a05:6512:2034:: with SMTP id
 s20mr15783712lfs.90.1591714232878; 
 Tue, 09 Jun 2020 07:50:32 -0700 (PDT)
MIME-Version: 1.0
From: Jan Hoogerbrugge <jan.hoogerbrugge@gmail.com>
Date: Tue, 9 Jun 2020 16:50:21 +0200
Message-ID: <CAD9j0trq5buFcFbffSdvhzNn10pyNDLE2Y4nyZ3PASxjyiKUNQ@mail.gmail.com>
Subject: Volatile lock bit support in MTD
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_075035_249338_42A465B4 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jan.hoogerbrugge[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

I am interested in using the volatile lock bit functionality in NOR flash
memories such as the mt35xu512aba.

With these bits one can write protect data until the next reset.

I could not find support for it in MTD. Did I miss it or is it planned?

Jan.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9A416C030
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Feb 2020 13:04:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LcaRQuTwhSf7tqjk1vmwYjmYKXhpI2RAdMnlJlySUY0=; b=QLh
	K7IUIVUPsQgYPpBSKzc76dSfEP6meSU42HRcMBIyRgy7UxFO0vHhCmvZcEyyi4jEp6T8oTfEKL8pe
	V1SLY7HSA8PSP/sLUqZg+x8pqCFeTfLOqCk/UxRhheA7bNsgFklrTU0VEMYIeBUdAqg0AGYjX9TzN
	Ymfe9VBkQJI0/axf5f6EQNITXMTAEeP7QFqKyaqr5m5ROpu86yAKOmfqhvGOYdYPdpy7EOKRZZxb7
	aRpunu7y//GwxafZ6P+PmMO/Zhu12vb6mQaEeXDoRHRpkhX0m9qq+aQFZr4N6ovFK6D5dfzZGkSsA
	0o0j3J1tazJ40kfPWWMtuqAY8HBay5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6YxB-00074N-TD; Tue, 25 Feb 2020 12:04:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Yx5-00073r-9e
 for linux-mtd@lists.infradead.org; Tue, 25 Feb 2020 12:04:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id l5so10176582wrx.4
 for <linux-mtd@lists.infradead.org>; Tue, 25 Feb 2020 04:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bZwPA3RGwD8pU8aBxNxgLZ7Z78acc8f6Au1L1blgYZs=;
 b=RuoVrntUjxMkKp/DGeRRH5Rb5SXvh1z9Wy2+xBsTVq2/lFj3Qyfff8+z8IZnBoQmCH
 FapxQbhdbn2R3+qqRbZhYIGEspdsBHPiAqb65ZqMo8dQ/QMicsv+/Xt7v6EB7ZisEBIE
 UH/xvfPTryCOIvUPfsjvlOm3teoD4vITJU3gUKPjT/0xkxfLvU0AFfEe4l5xjogXTGwK
 44vkbO20tfpFJ50TbtNoTd3/INyWHxpy4wluLMMPzx2E4jhWZPAxBEyYLl2STTlVYOSW
 v0VYNBNYWkwKoJhVZ1DY+3nDH1XoFfKGfr+bx4WiZwRyWiw3Iy403k11rEWQWI1q4tT0
 jcAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bZwPA3RGwD8pU8aBxNxgLZ7Z78acc8f6Au1L1blgYZs=;
 b=emakJk23rP/A0y15Yv5Rb1x2Ms85/4LIDx937HA61H9Z6UMzQFmDdoWLu+t0scxnkV
 RTg2Q2v7uM3on3ZNZ60UMl0NTRud7hEaRSmsDUG9+67mdw55k7rUmslzJ4/ncwX7sMYA
 lYdIGBnihoHKmJp3tmvN4qOLPXPStufkMzmyHqKoSPIdR4JbFREZq8UDrzFClj1eoePq
 y9cg9lQHdWoOtIOeGmRO80h/8Dz+xNJfCrx2VXVnfzYTe3ezA7PBV74UjPtUaLgu4pmz
 kxcFXMXERX6l1dB/UcAsuJ8eyMWtzDwJd2XgBw7hHhQHccuwQGlxHeb+tvZjRaFL6jn3
 Rdlg==
X-Gm-Message-State: APjAAAXK+tQPAo/7iJ7RAxsuMx+NnnO0XYytSjJl1JpYe/KBLJDwuoKL
 O84oD4r+mFyssIZI1QNB0LpocpkYTFRbbT1VM74=
X-Google-Smtp-Source: APXvYqzhhXfMcw+Nub2bB882QV+q7F54yGp2AN9SL9LoGAFkbvFuljzIiYIrVRFi5H52UKNV3rcW39ZTQlfWgnNQtn4=
X-Received: by 2002:a05:6000:149:: with SMTP id
 r9mr68666027wrx.147.1582632277159; 
 Tue, 25 Feb 2020 04:04:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5d:4b82:0:0:0:0:0 with HTTP; Tue, 25 Feb 2020 04:04:36
 -0800 (PST)
From: "fedmfiinance10@gmail.com" <fedmfiinance10@gmail.com>
Date: Tue, 25 Feb 2020 12:04:36 +0000
Message-ID: <CAHbjaFD9V_JZW4BW+ugqEi6JqHb=8fgfTLuhhJqB-QwehYA=EA@mail.gmail.com>
Subject: Prompt reply would be greatly appreciated
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_040439_338079_080E04A9 
X-CRM114-Status: UNSURE (   0.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [fedmfiinance10[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fedmfiinance10[at]gmail.com]
 0.1 BAD_CREDIT             BODY: Eliminate Bad Credit
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

RE: LOAN FACILITY

Have you been trying to obtain a Loan from any of the Banks or Loan
Companies and they have refused to grant you Loan due to bad credit?.
We have Loan facility at a low Interest Rate of 3% annually for a
duration of 15 years with 24 months moratorium period.

The categories of Loan facility offered include but not limited to:
Business Loan, Personal Loan, Company Loan, Mortgage Loan, Debt
consolidation and financial funding for both turnkey and mega projects
etc.

Should you find this interesting, kindly get in touch with your
business plan for details, terms and conditions and share your
WhatsApp line for easy communication.

Prompt reply would be greatly appreciated

Best Regards,
Mr. Shabab Isaac
CONSULTANTS OF FINANCIAL SERVICES LIMITED
57 Frederick Road, Sutton, Surrey,
SM1 2HP United Kingdom
Company number: 08898840
Phone: +44-7452379198  / WhatsApp: +44-7978379923

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

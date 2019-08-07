Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C2284204
	for <lists+linux-mtd@lfdr.de>; Wed,  7 Aug 2019 04:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lVJIGSZ48ibonBVgwPFYK2aov6hddCdGooUMHiYLo2w=; b=H4xZnCtROKnge2
	VmmHwfGibvnZ4Gipiq+E1AqwjY8oMlBJ6YAgsUjcnsyF4R+nL5/3bj+D6CUXLx1jKilEMAvyPtcff
	VXL5eg78hRH5VNi531Cgs1zL8eeDt19DkhREjonqOlNEiQzKF6SRRqBf3OLIDO+sQzDesbRigY7OO
	bSStcsJWsFxJx6ZiwIILSU3qzMyCGNbhm10ApXUMMtqg4NLQaxPQiwvd3UhjGeat3hjSEJJu+Bo20
	2vWx4A5JOvX73tOHnefuPX/15T+e42sgdNjYDKA5WoyPOgemvP5duBIQDwfpd7LBMDTor8iqN34V7
	c61mUzLAZnE4RMgsZ7Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvBFD-0006zW-Pr; Wed, 07 Aug 2019 02:00:03 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvBF4-0006yw-8W
 for linux-mtd@lists.infradead.org; Wed, 07 Aug 2019 01:59:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id c9so62698807lfh.4
 for <linux-mtd@lists.infradead.org>; Tue, 06 Aug 2019 18:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=hUcKlTjR1HIw/YzjCQ7WTvYjftRSq8rHNjYT9AykjRQ=;
 b=nkU9lTp0VG7JJUkyzpxalPeRpwMCOgSg38BTEc98wLSP9ukpsM0heJbWXPOUriymsk
 lMm+NoQgRkOGiQ5iYCtc+sYvykHGh93GR3+blXd76to6eUtIh4wws9G71kMMwYpMy2B8
 y00kI2ke4Q5nDa/Ny9iWtisxMkgb/Qt4df8DjWiefHbH3gZ19RMPBMlcFf4BK2yGqFTN
 uMS2G93A3Wv8B1Q+JmGDQ5EBCHdHkdoW+gxqZt0/yPfQgLWrM2vFppvZQ13LP2jA87xK
 sr4/diBmzjDC8gKxKXN+EVTDGI7T2Ax74ClMEJg4kbJQo+rrynTeHmDwXdyVasAp4haX
 X18g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=hUcKlTjR1HIw/YzjCQ7WTvYjftRSq8rHNjYT9AykjRQ=;
 b=jCuqt2VA+PnZCXTTZ0p50nHv/DllJwTISi3j74cAgX4HBH0duGbFa7f8oU+zNsPxTM
 naDH/HBU8H0as+3VuiqNHYFDxhjWnN/ZEKzy6jSJzgHQArzuBQH72qCqN4V0c4YEG2Vm
 bPBYcthYJwmDsteRvDOO9WqpP4llXeFGRP3/28twt5oLl2kEWmZ0E8aWaOCNhcZlhrve
 6QdkiBfEukW8762By97eDF/z+VJ0poI7Kd3tYCDhkTeReX4NU0PUcULwfZR+4wooulci
 1A7KhdiIydlrFeEBo3p0+/1DeN7aypqJFjDGMX9/tugM/umCT1/Pn3vLV5LEWRuuM5yB
 6l1Q==
X-Gm-Message-State: APjAAAXA5phehfb91+NXa2fRuP3NHOKzHV0Fa7vGjoqkou97iNCD4jp5
 3wQD3IngOUn55KkBcpyW8S2+3GMlhOqJIuJchhg=
X-Google-Smtp-Source: APXvYqwrQLw32+4Gf3X854Fe32b4eTmY0jiNIgu9/gJS4/FNPwTN2cMX8MNZbkqrQyMM/XJiazzQ0qVgT1Jw7NRFv3A=
X-Received: by 2002:a19:5f46:: with SMTP id a6mr4538684lfj.142.1565143192047; 
 Tue, 06 Aug 2019 18:59:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:7507:0:0:0:0:0 with HTTP;
 Tue, 6 Aug 2019 18:59:51 -0700 (PDT)
From: Simon Beron <agbej57@gmail.com>
Date: Wed, 7 Aug 2019 03:59:51 +0200
Message-ID: <CAPE2HD12WDAfF2SFFrAa-FqCOhHvka=bjWRmLVm+7bKikui5cA@mail.gmail.com>
Subject: PARTNERSHIP REQUEST,
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_185954_304532_9BFA0446 
X-CRM114-Status: UNSURE (  -2.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.4 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (beronsimon69[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (agbej57[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (agbej57[at]gmail.com)
 2.6 DEAR_FRIEND            BODY: Dear Friend? That's not very dear!
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: beronsimon69@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Dear Friend,

I need you to please let me know if there are fast growing investments
in your country in which i can invest money in. I have access to a
huge amount of money, which i want to invest in your country, i want
to know if you can be an agent/partner to me and i will give you a
commission of 30% only If you agree to assist me, i will like to know
if the commission is ok for you, also i would love to know more about
you too. Get Back to me without delay if you are interested


Yours Faithfully

Simon Beron.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

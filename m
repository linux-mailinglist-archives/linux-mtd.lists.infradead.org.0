Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF5A1979E3
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Mar 2020 12:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zGklMGM68N4seg/dpEdgyrkc+rC9yw6vwqsQb97Iw/s=; b=T9kLGxA+BIi+wG
	rZgMqf/o1q+wQFT12P6ruZJ5D6w2tYKefPBnsBRc4fngOET0QiHYj2YQXWSiYCQmONtoGTLJzw8un
	O0DIdqm0FeJMoD6D5v9kRHVmoprm5APgrX7T3YWjMGeTiPMOJJiDR+ql8BFNAeknuyidweHQfHzkY
	6b+lYyQQEncnrK0AdUXn6gTD0jK2a6ToAoqTYQ8LrX2wH3e0bIfdkVcKO8PYCsXbOXzML/3MAoFrY
	Y83kyKorzJey1+GvCLWDxWdFmqF0Hw852MO7A+6C9gWRF7RnZ1E9u4kyVas9dH9c2RwZk8Zla5yvK
	R/Kt5BChfYQEgtg+WlJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIs2J-00044f-04; Mon, 30 Mar 2020 10:52:55 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIs28-0003zv-HR
 for linux-mtd@lists.infradead.org; Mon, 30 Mar 2020 10:52:47 +0000
Received: by mail-vs1-xe44.google.com with SMTP id x206so10699314vsx.5
 for <linux-mtd@lists.infradead.org>; Mon, 30 Mar 2020 03:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=82B0OONv9gwbZlPp43NzThDz2fRV+KRFwafOQ16joDw=;
 b=I2bZK+Edwp7f1bl38ZDsYZ8gkHoLOp7N+SgwKjOSdbsqnWhmYlKKFyWTTwwdBuA4Vg
 rwBHnP7ed1EksF/Uo6wi0daOtai1jA53B5b9RrMCwInP8fTj6xlf+N87Jxy7Sxa+QbUF
 l2GP0Lv6JzwuZiPJAzgKXNfvaR6mAHzPBfBvakflfZ8B4h5bL4zPFQy+qXgn4TFvbTXz
 A1ohkR077EumDiarvC1dhS/fXXyUHKbnnxfkdMVlwSlZiAQJvL50ZQklv05R+GT0yrBC
 3q/4vjuGZ1FGpK3Ogg0O4Ce18OqauZECfFoMpKCzkd0qt9LKtlmIkWUwZqPjuntycFFN
 I7DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=82B0OONv9gwbZlPp43NzThDz2fRV+KRFwafOQ16joDw=;
 b=oIwT8EryBLp+1UFB3JnyjP5JPI4vqVnziYa1bGGv7HYQoqMI1VGFNbGXiI2++96dtD
 5OElPNwi/uo9/4pYRIy7djOkvxSlUwvnOBxTACXRxT2HP1m6nH5JLl/jxaVAFGnPpVsB
 Pt0SMTTGBN1l26JSCK5dd1Ff/4wjhJIa4Cl6WkvBR2HAEY86AYY/1qaR7+M+artuzB2Z
 hH1rabROEWYN9xz3VMMw6vrNcBmGyfWpMZgFTLSQCfvC9cnagYlB+jSyHpn3wb6AJUrF
 05ZTXPV56kelS/fo1b86HfhBL1xwPuo1vFLPivi1XtXXm9O2qoU+6JRhbmT+QIUVydrN
 dOFg==
X-Gm-Message-State: AGi0PuYUtjBass8bVqI6iWvY0UufAbWmz/SAlbDocqtNy3zUq+NUuNum
 7lB0NyMEZwwBX/JIX7n5VaEGJfi+98CW0rKyRkmF7wwU
X-Google-Smtp-Source: APiQypIWKERkhJyfw3nllppwlKx4Kg5tACX7YV91IKVmdYpKGJw8tan3l05zjbxOy64C+jzvYjD6e0YtF987t4KsIjw=
X-Received: by 2002:a67:e24c:: with SMTP id w12mr8442912vse.153.1585565563772; 
 Mon, 30 Mar 2020 03:52:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:c005:0:0:0:0:0 with HTTP; Mon, 30 Mar 2020 03:52:43
 -0700 (PDT)
From: Maryalice Williams <maryalicewilliams730@gmail.com>
Date: Mon, 30 Mar 2020 08:52:43 -0200
Message-ID: <CAKwdjsr+YKgJk7z-UHX7Zo55cx5RUN3-bw03sWcArP4vbM2B5g@mail.gmail.com>
Subject: Reply For More Details.
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_035244_587107_C25B5F0D 
X-CRM114-Status: UNSURE (  -2.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [maryalicewilliams730[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [maryalicewilliams730[at]gmail.com]
 0.0 MILLION_HUNDRED        BODY: Million "One to Nine" Hundred
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
 0.9 ADVANCE_FEE_2_NEW_MONEY Advance Fee fraud and lots of money
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
Reply-To: maryalice00.12@postribe.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

-- 
My dear,

I am Mrs Maryalice Williams, I want to send you donation of two
million seven hundred thousand Dollars ($2.7M) for volunteer projects
in your country due to my ill health that could not permit me. Kindly
reply for more details, and also send me the following details, as per
below, your full Name ..........,  Address...........,
Age...............,  Occupation ...............

Remain blessed,
Mrs. Maryalice Williams.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

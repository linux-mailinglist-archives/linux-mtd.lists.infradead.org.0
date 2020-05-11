Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCB71CDE22
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 17:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KZEWzkNn8/qodZuxD5IkabzmCcuqf4qfCtBsVk3/hI=; b=uRzeQA+P51d1Js
	WI1sHuURHENqO6aIFEEH5bpeNWiTWtOMnk4QOh41vAAdzWB2zFLmlxZlEk7BYSujurjZ7/tOlGWrL
	+fGt90fcgH7XWVLMbm3fDICHh1B+Qdtb4MJwFf/odpYsXZWEhfswa9Rm+Mg3KadcgdBfF3/gYy3ay
	CFFgPY980EuLjmLaKWuut0qCxNvxUJfyi6Ojicr+k5BY/FYor7ewPFq3srDly0Mph4vuN7Fi2fUA7
	ZVjQNWwRL3AEfpz5lJkPvbvKkEm0JgZCPi9eZuZolNr1MYjTMW8edb7uNIEfN9j+WR8a0C38X89n4
	UgIGmVRlHSox1WkT5LzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA1x-00021d-Il; Mon, 11 May 2020 15:07:45 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA1q-000211-Fz
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 15:07:40 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 0EA6E200014;
 Mon, 11 May 2020 15:07:31 +0000 (UTC)
Date: Mon, 11 May 2020 17:07:29 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v4 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200511170729.4766eeaa@xps13>
In-Reply-To: <20200510090314.10426b6e@collabora.com>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
 <20200508171339.8052-8-miquel.raynal@bootlin.com>
 <20200510090314.10426b6e@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080738_803599_349C79F6 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 10 May
2020 09:03:14 +0200:

> On Fri,  8 May 2020 19:13:38 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > +static int anfc_exec_op(struct nand_chip *chip,
> > +			const struct nand_operation *op,
> > +			bool check_only)
> > +{
> > +	int ret;
> > +
> > +	if (check_only)
> > +		return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
> > +					      check_only);  
> 
> You should also check the DATA_IN/OUT size here ^.

Here is my proposal:

---8<---

+static int anfc_check_op(struct nand_chip *chip,
+                        const struct nand_operation *op)
+{
+       int op_id;
+
+       /*
+        * The controller abstracts all the NAND operations and do not support
+        * data only operations.
+        */
+       for (op_id = 0; op_id < op->ninstrs; op_id++) {
+               instr = &op->instrs[op_id];
+
+               switch (instr->type) {
+               case NAND_OP_ADDR_INSTR:
+                       if (instr->ctx.addr.naddrs > ANFC_MAX_ADDR_CYC)
+                               return -ENOTSUPP;
+                       break;
+               case NAND_OP_DATA_IN_INSTR:
+               case NAND_OP_DATA_OUT_INSTR:
+                       if (instr->ctx.data.len > ANFC_MAX_CHUNK_SIZE)
+                               return -ENOTSUPP;
+                       break;
+               default:
+               }
+       }
+
+       /*
+        * The controller does not allow to proceed with a CMD+DATA_IN cycle
+        * manually on the bus by reading data from the data register. Instead,
+        * the controller abstract a status read operation with its own status
+        * register after ordering a read status operation. Hence, we cannot
+        * support any CMD+DATA_IN operation other than a READ STATUS.
+        */
+       if (op->ninstrs == 2 &&
+           op->instrs[0].type == NAND_OP_CMD_INSTR &&
+           op->instrs[0].ctx.cmd.opcode != NAND_CMD_STATUS &&
+           op->instrs[1].type == NAND_OP_DATA_IN_INSTR)
+               return -ENOTSUPP;
+
+       return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
+                                     check_only);
+}
+
 static int anfc_exec_op(struct nand_chip *chip,
                        const struct nand_operation *op,
                        bool check_only)
@@ -774,8 +813,7 @@ static int anfc_exec_op(struct nand_chip *chip,
        int ret;
 
        if (check_only)
-               return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
-                                             check_only);
+               return anfc_check_op(chip, op);
 
        ret = anfc_select_target(chip, op->cs);
        if (ret)

--->8---

What do you think?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

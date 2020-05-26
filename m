Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A041C9A98
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 21:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMhU63yz8If9rShzeDycIRj7B9DBgE5JjqUONZKqMnk=; b=YUSZkKASPH9lZ5
	L5M63MRZ31c3sStjFJ08QouxbYICG1G1+bimiQacWzh37J4tDXyywwNqEkFPCoU8sG5N7WCpCk7UJ
	lYGC7u1dooCDEo4ZW+1ljeRwDtSL3v5+c8MbeaFouuEBLg0JYzO0PzEpWONLbLn75VXL3XaSmorK3
	FLGb2hg+IbbAyXGkhrMYmPrSdFL9MuQiV75dzhWUyjhGQ7hWu8h3vusOQNcGRyNms4gonjzlBWizc
	zPNLbWAKP8crfiFOLPVHADpvqp9Vi/VzzbBYapJ8c+QF0y1/Wqsh726hEBWujo33iIdIh+pXa6af5
	Et5EOJhPs6IY9S3PhqOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlxN-0005NJ-0v; Thu, 07 May 2020 19:13:17 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlxF-0005Mk-Uq
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 19:13:11 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 12C4924000A;
 Thu,  7 May 2020 19:13:03 +0000 (UTC)
Date: Thu, 7 May 2020 21:13:02 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200507211302.59f7c2ba@xps13>
In-Reply-To: <20200507145127.71615ed8@collabora.com>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
 <20200507110034.14736-8-miquel.raynal@bootlin.com>
 <20200507145127.71615ed8@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_121310_127295_4114D983 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 7 May
2020 14:51:27 +0200:

> > +/* NAND framework ->exec_op() hooks and related helpers */
> > +static void anfc_parse_instructions(struct nand_chip *chip,
> > +				    const struct nand_subop *subop,
> > +				    struct anfc_op *nfc_op)
> > +{
> > +	struct anand *anand = to_anand(chip);
> > +	const struct nand_op_instr *instr = NULL;
> > +	bool first_cmd = true;
> > +	unsigned int op_id;
> > +	int i;
> > +
> > +	memset(nfc_op, 0, sizeof(*nfc_op));
> > +	nfc_op->addr2_reg = ADDR2_CS(anand->cs);
> > +	nfc_op->cmd_reg = CMD_PAGE_SIZE(anand->page_sz);
> > +
> > +	for (op_id = 0; op_id < subop->ninstrs; op_id++) {
> > +		unsigned int offset, naddrs, pktsize;
> > +		const u8 *addrs;
> > +		u8 *buf;
> > +
> > +		instr = &subop->instrs[op_id];
> > +
> > +		switch (instr->type) {
> > +		case NAND_OP_CMD_INSTR:
> > +			if (first_cmd)
> > +				nfc_op->cmd_reg |= CMD_1(instr->ctx.cmd.opcode);
> > +			else
> > +				nfc_op->cmd_reg |= CMD_2(instr->ctx.cmd.opcode);
> > +
> > +			first_cmd = false;
> > +			break;
> > +
> > +		case NAND_OP_ADDR_INSTR:
> > +			offset = nand_subop_get_addr_start_off(subop, op_id);
> > +			naddrs = nand_subop_get_num_addr_cyc(subop, op_id);
> > +			addrs = &instr->ctx.addr.addrs[offset];
> > +			nfc_op->cmd_reg |= CMD_NADDRS(naddrs);
> > +
> > +			for (i = 0; i < min(ANFC_MAX_ADDR_CYC, naddrs); i++) {
> > +				if (i < 4)
> > +					nfc_op->addr1_reg |= (u32)addrs[i] << i * 8;
> > +				else
> > +					nfc_op->addr2_reg |= addrs[i];
> > +			}
> > +
> > +			break;
> > +		case NAND_OP_DATA_IN_INSTR:
> > +			nfc_op->read = true;
> > +			fallthrough;
> > +		case NAND_OP_DATA_OUT_INSTR:
> > +			offset = nand_subop_get_data_start_off(subop, op_id);
> > +			buf = instr->ctx.data.buf.in;
> > +			nfc_op->buf = &buf[offset];
> > +			nfc_op->len = nand_subop_get_data_len(subop, op_id);
> > +			nfc_op->steps = anfc_len_to_steps(chip, nfc_op->len);
> > +			pktsize = DIV_ROUND_UP(nfc_op->len, nfc_op->steps);
> > +			nfc_op->pkt_reg |= PKT_SIZE(round_up(pktsize, 4)) |  
> 
> Hm, pktsize has to be aligned on 4? Again, that's not great since you
> adjust the size without letting the core know you did that.

I confirm the round_up() is needed. It does not work without.

> 
> > +					   PKT_STEPS(nfc_op->steps);
> > +			break;
> > +		case NAND_OP_WAITRDY_INSTR:
> > +			nfc_op->rdy_timeout_ms = instr->ctx.waitrdy.timeout_ms;
> > +			break;
> > +		}
> > +	}
> > +}


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

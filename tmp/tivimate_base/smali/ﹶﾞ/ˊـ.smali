.class public final Lﹶﾞ/ˊـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:J

.field public ⁱˊ:I

.field public final ﹳٴ:Lﹶﾞ/ᵢי;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵢי;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˊـ;->ﹳٴ:Lﹶﾞ/ᵢי;

    const/4 p1, 0x1

    iput p1, p0, Lﹶﾞ/ˊـ;->ⁱˊ:I

    invoke-virtual {p0}, Lﹶﾞ/ˊـ;->ﹳٴ()J

    move-result-wide v0

    iput-wide v0, p0, Lﹶﾞ/ˊـ;->ʽ:J

    return-void
.end method


# virtual methods
.method public final ﹳٴ()J
    .locals 7

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˊـ;->ﹳٴ:Lﹶﾞ/ᵢי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    sget-object v1, Lﹶﾞ/ᴵᵔ;->ʻٴ:Lﹶﾞ/ˈٴ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v1, Lﹶﾞ/ᴵᵔ;->ـˆ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v1, v2}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lﹶﾞ/ˊـ;->ⁱˊ:I

    if-ge v5, v6, :cond_1

    add-long/2addr v3, v3

    cmp-long v6, v3, v1

    if-ltz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v5

    return-wide v0
.end method

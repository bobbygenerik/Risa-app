.class public abstract Lᐧﹳ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʼʻ/ʿᵢ;

.field public static final ˈ:Lʼʻ/ʿᵢ;

.field public static final ⁱˊ:Lʼʻ/ʿᵢ;

.field public static final ﹳٴ:Lʼʻ/ᵔٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v7, "_exp_timeout"

    const-string v8, "_exp_expire"

    const-string v0, "_ac"

    const-string v1, "campaign_details"

    const-string v2, "_ug"

    const-string v3, "_iapx"

    const-string v4, "_exp_set"

    const-string v5, "_exp_clear"

    const-string v6, "_exp_activate"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lʼʻ/ᵔٴ;->ʽʽ:I

    const/16 v1, 0xf

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "_in"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "_xa"

    aput-object v5, v2, v4

    const/4 v5, 0x2

    const-string v6, "_xu"

    aput-object v6, v2, v5

    const/4 v6, 0x3

    const-string v7, "_aq"

    aput-object v7, v2, v6

    const/4 v7, 0x4

    const-string v8, "_aa"

    aput-object v8, v2, v7

    const/4 v8, 0x5

    const-string v9, "_ai"

    aput-object v9, v2, v8

    const/4 v9, 0x6

    const/16 v10, 0x9

    invoke-static {v0, v3, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v2}, Lʼʻ/ᵔٴ;->ˆʾ(I[Ljava/lang/Object;)Lʼʻ/ᵔٴ;

    move-result-object v0

    sput-object v0, Lᐧﹳ/ﹳٴ;->ﹳٴ:Lʼʻ/ᵔٴ;

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "_e"

    aput-object v2, v1, v3

    const-string v2, "_f"

    aput-object v2, v1, v4

    const-string v2, "_iap"

    aput-object v2, v1, v5

    const-string v2, "_s"

    aput-object v2, v1, v6

    const-string v2, "_au"

    aput-object v2, v1, v7

    const-string v2, "_ui"

    aput-object v2, v1, v8

    const-string v2, "_cd"

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lʼʻ/ﹳᐧ;->ⁱˊ(I[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lʼʻ/ᵎⁱ;->ʼˎ(I[Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    sput-object v0, Lᐧﹳ/ﹳٴ;->ⁱˊ:Lʼʻ/ʿᵢ;

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "auto"

    aput-object v1, v0, v3

    const-string v1, "app"

    aput-object v1, v0, v4

    const-string v1, "am"

    aput-object v1, v0, v5

    invoke-static {v6, v0}, Lʼʻ/ﹳᐧ;->ⁱˊ(I[Ljava/lang/Object;)V

    invoke-static {v6, v0}, Lʼʻ/ᵎⁱ;->ʼˎ(I[Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    sput-object v0, Lᐧﹳ/ﹳٴ;->ʽ:Lʼʻ/ʿᵢ;

    const-string v0, "_r"

    const-string v1, "_dbg"

    invoke-static {v0, v1}, Lʼʻ/ᵎⁱ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    sput-object v0, Lᐧﹳ/ﹳٴ;->ˈ:Lʼʻ/ʿᵢ;

    new-instance v0, Lʼʻ/ˊʻ;

    invoke-direct {v0, v7}, Lʼʻ/ʽʽ;-><init>(I)V

    sget-object v1, Lﹶﾞ/ʻᴵ;->ʼˎ:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lʼʻ/ʽʽ;->ⁱˊ([Ljava/lang/Object;)V

    sget-object v1, Lﹶﾞ/ʻᴵ;->ˆʾ:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lʼʻ/ʽʽ;->ⁱˊ([Ljava/lang/Object;)V

    invoke-virtual {v0}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    const-string v0, "^_ltv_[A-Z]{3}$"

    const-string v1, "^_cc[1-5]{1}$"

    invoke-static {v0, v1}, Lʼʻ/ᵎⁱ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    return-void
.end method

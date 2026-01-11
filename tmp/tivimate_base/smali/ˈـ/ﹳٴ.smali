.class public final Lˈـ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Ljava/lang/String;

.field public final ʽ:Ljava/lang/String;

.field public final ˈ:I

.field public final ˑﹳ:Ljava/util/HashMap;

.field public ᵎﹶ:Ljava/lang/String;

.field public ᵔᵢ:Ljava/lang/String;

.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/String;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lˈـ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iput p1, p0, Lˈـ/ﹳٴ;->ⁱˊ:I

    iput-object p4, p0, Lˈـ/ﹳٴ;->ʽ:Ljava/lang/String;

    iput p2, p0, Lˈـ/ﹳٴ;->ˈ:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lˈـ/ﹳٴ;->ˑﹳ:Ljava/util/HashMap;

    const/4 p1, -0x1

    iput p1, p0, Lˈـ/ﹳٴ;->ﾞᴵ:I

    return-void
.end method

.method public static ⁱˊ(IIILjava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ﹳٴ()Lˈـ/ʽ;
    .locals 6

    .prologue
    const-string v0, "rtpmap"

    iget-object v1, p0, Lˈـ/ﹳٴ;->ˑﹳ:Ljava/util/HashMap;

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0}, Lˈـ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lˈـ/ⁱˊ;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget v0, p0, Lˈـ/ﹳٴ;->ˈ:I

    const-string v2, "L16"

    const/16 v3, 0x60

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const/16 v3, 0x1f40

    if-eqz v0, :cond_5

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const v3, 0xac44

    const/16 v4, 0xa

    if-eq v0, v4, :cond_3

    const/16 v4, 0xb

    if-ne v0, v4, :cond_2

    invoke-static {v4, v3, v5, v2}, Lˈـ/ﹳٴ;->ⁱˊ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported static paylod type "

    invoke-static {v0, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v0, 0x2

    invoke-static {v4, v3, v0, v2}, Lˈـ/ﹳٴ;->ⁱˊ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "PCMA"

    invoke-static {v4, v3, v5, v0}, Lˈـ/ﹳٴ;->ⁱˊ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, "PCMU"

    invoke-static {v4, v3, v5, v0}, Lˈـ/ﹳٴ;->ⁱˊ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lˈـ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lˈـ/ⁱˊ;

    move-result-object v0

    :goto_2
    new-instance v2, Lˈـ/ʽ;

    invoke-static {v1}, Lʼʻ/ᵔי;->ﹳٴ(Ljava/util/Map;)Lʼʻ/ᵔי;

    move-result-object v1

    invoke-direct {v2, p0, v1, v0}, Lˈـ/ʽ;-><init>(Lˈـ/ﹳٴ;Lʼʻ/ᵔי;Lˈـ/ⁱˊ;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

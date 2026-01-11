.class public final Lˆᴵ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ʼᐧ;


# instance fields
.field public final ʽ:Lⁱʼ/ʼᐧ;

.field public final ˈ:Ljava/lang/Class;

.field public final ⁱˊ:Lⁱʼ/ʼᐧ;

.field public final ﹳٴ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lⁱʼ/ʼᐧ;Lⁱʼ/ʼᐧ;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lˆᴵ/ﾞᴵ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lˆᴵ/ﾞᴵ;->ⁱˊ:Lⁱʼ/ʼᐧ;

    iput-object p3, p0, Lˆᴵ/ﾞᴵ;->ʽ:Lⁱʼ/ʼᐧ;

    iput-object p4, p0, Lˆᴵ/ﾞᴵ;->ˈ:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    check-cast p1, Landroid/net/Uri;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ʽʽ(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;
    .locals 10

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    new-instance p1, Lⁱʼ/ˉˆ;

    new-instance v9, Lˋᵎ/ⁱˊ;

    invoke-direct {v9, v4}, Lˋᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lˆᴵ/ˑﹳ;

    iget-object v3, p0, Lˆᴵ/ﾞᴵ;->ʽ:Lⁱʼ/ʼᐧ;

    iget-object v8, p0, Lˆᴵ/ﾞᴵ;->ˈ:Ljava/lang/Class;

    iget-object v1, p0, Lˆᴵ/ﾞᴵ;->ﹳٴ:Landroid/content/Context;

    iget-object v2, p0, Lˆᴵ/ﾞᴵ;->ⁱˊ:Lⁱʼ/ʼᐧ;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lˆᴵ/ˑﹳ;-><init>(Landroid/content/Context;Lⁱʼ/ʼᐧ;Lⁱʼ/ʼᐧ;Landroid/net/Uri;IILʼᵔ/ᵔᵢ;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v0}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p1
.end method

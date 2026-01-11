.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "L\u02cf/\u2071\u02ca;",
            ">;"
        }
    .end annotation

    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ﹳٴ;

    const-class v2, Lᴵי/ˏי;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lˏ/ⁱˊ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ﹳٴ;

    move-result-object v0

    new-instance v3, Lˏ/ˉˆ;

    const-class v4, Ljava/util/concurrent/Executor;

    invoke-direct {v3, v1, v4}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v1, Lˏ/ʼˎ;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v1, v3, v5, v6}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v0, v1}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v1, Lˉᵎ/ᵔᵢ;->ᴵˊ:Lˉᵎ/ᵔᵢ;

    iput-object v1, v0, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v0

    new-instance v1, Lˏ/ˉˆ;

    const-class v3, Lˋˎ/ʽ;

    invoke-direct {v1, v3, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v1}, Lˏ/ⁱˊ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ﹳٴ;

    move-result-object v1

    new-instance v7, Lˏ/ˉˆ;

    invoke-direct {v7, v3, v4}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v3, Lˏ/ʼˎ;

    invoke-direct {v3, v7, v5, v6}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v1, v3}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v3, Lˉᵎ/ᵔᵢ;->ʽʽ:Lˉᵎ/ᵔᵢ;

    iput-object v3, v1, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v1}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v1

    new-instance v3, Lˏ/ˉˆ;

    const-class v7, Lˋˎ/ⁱˊ;

    invoke-direct {v3, v7, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v3}, Lˏ/ⁱˊ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ﹳٴ;

    move-result-object v3

    new-instance v8, Lˏ/ˉˆ;

    invoke-direct {v8, v7, v4}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v7, Lˏ/ʼˎ;

    invoke-direct {v7, v8, v5, v6}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v3, v7}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v7, Lˉᵎ/ᵔᵢ;->ˈٴ:Lˉᵎ/ᵔᵢ;

    iput-object v7, v3, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v3}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v3

    new-instance v7, Lˏ/ˉˆ;

    const-class v8, Lˋˎ/ˈ;

    invoke-direct {v7, v8, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v7}, Lˏ/ⁱˊ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ﹳٴ;

    move-result-object v2

    new-instance v7, Lˏ/ˉˆ;

    invoke-direct {v7, v8, v4}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v4, Lˏ/ʼˎ;

    invoke-direct {v4, v7, v5, v6}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v2, v4}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v4, Lˉᵎ/ᵔᵢ;->ᴵᵔ:Lˉᵎ/ᵔᵢ;

    iput-object v4, v2, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v2}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Lˏ/ⁱˊ;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    invoke-static {v4}, Lﹶˈ/ٴﹶ;->ʿ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

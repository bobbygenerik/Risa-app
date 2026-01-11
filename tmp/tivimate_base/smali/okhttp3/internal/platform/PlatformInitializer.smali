.class public final Lokhttp3/internal/platform/PlatformInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᵎ/ⁱˊ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L\u02ca\u1d4e/\u2071\u02ca;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    if-eqz v0, :cond_0

    check-cast v0, Lـᐧ/ˈ;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lـᐧ/ˈ;->ﹳٴ(Landroid/content/Context;)V

    :cond_1
    sget-object p1, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    return-object p1
.end method

.method public final ﹳٴ()Ljava/util/List;
    .locals 1

    sget-object v0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object v0
.end method

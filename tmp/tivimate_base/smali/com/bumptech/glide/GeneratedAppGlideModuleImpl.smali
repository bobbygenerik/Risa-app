.class public final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "SourceFile"


# instance fields
.field public final ٴᵢ:Lar/tvplayer/core/util/TvPlayerGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    new-instance p1, Lar/tvplayer/core/util/TvPlayerGlideModule;

    invoke-direct {p1}, Lar/tvplayer/core/util/TvPlayerGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->ٴᵢ:Lar/tvplayer/core/util/TvPlayerGlideModule;

    return-void
.end method


# virtual methods
.method public final ˆʾ()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->ٴᵢ:Lar/tvplayer/core/util/TvPlayerGlideModule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final ˈٴ(Landroid/content/Context;Lcom/bumptech/glide/ⁱˊ;Lcom/bumptech/glide/ᵔᵢ;)V
    .locals 2

    new-instance v0, Lᵎʼ/ⁱˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᵎʼ/ⁱˊ;-><init>(I)V

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/ᵔᵢ;->ˉʿ(Lᵎʼ/ⁱˊ;)V

    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->ٴᵢ:Lar/tvplayer/core/util/TvPlayerGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lar/tvplayer/core/util/TvPlayerGlideModule;->ˈٴ(Landroid/content/Context;Lcom/bumptech/glide/ⁱˊ;Lcom/bumptech/glide/ᵔᵢ;)V

    return-void
.end method

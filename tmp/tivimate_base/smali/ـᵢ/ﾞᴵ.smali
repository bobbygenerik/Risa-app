.class public final Lـᵢ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ˉˆ;


# instance fields
.field public final synthetic ʾˋ:Lـᵢ/ᵔᵢ;


# direct methods
.method public synthetic constructor <init>(Lـᵢ/ᵔᵢ;)V
    .locals 0

    iput-object p1, p0, Lـᵢ/ﾞᴵ;->ʾˋ:Lـᵢ/ᵔᵢ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lـᵢ/ﾞᴵ;->ʾˋ:Lـᵢ/ᵔᵢ;

    iget-object v1, v0, Lـᵢ/ᵔᵢ;->ᵎᵔ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v1}, Lᵔⁱ/ˉʿ;->ʽ()V

    iget-object v0, v0, Lـᵢ/ᵔᵢ;->ᐧᴵ:Landroidx/media3/exoplayer/dash/DashManifestStaleException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

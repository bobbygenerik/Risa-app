.class public final Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lـˋ/ﹳٴ;)Landroidx/media/AudioAttributesCompat;
    .locals 3

    .prologue
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat;-><init>()V

    iget-object v1, v0, Landroidx/media/AudioAttributesCompat;->ﹳٴ:Landroidx/media/AudioAttributesImpl;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lـˋ/ﹳٴ;->ˑﹳ(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lـˋ/ﹳٴ;->ᵔᵢ()Lـˋ/ʽ;

    move-result-object v1

    :goto_0
    check-cast v1, Landroidx/media/AudioAttributesImpl;

    iput-object v1, v0, Landroidx/media/AudioAttributesCompat;->ﹳٴ:Landroidx/media/AudioAttributesImpl;

    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesCompat;Lـˋ/ﹳٴ;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media/AudioAttributesCompat;->ﹳٴ:Landroidx/media/AudioAttributesImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lـˋ/ﹳٴ;->ʼˎ(I)V

    invoke-virtual {p1, p0}, Lـˋ/ﹳٴ;->ٴﹶ(Lـˋ/ʽ;)V

    return-void
.end method

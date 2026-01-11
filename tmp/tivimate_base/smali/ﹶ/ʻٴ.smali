.class public final Lﹶ/ʻٴ;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Lﹶ/ـˆ;


# direct methods
.method public constructor <init>(Lﹶ/ـˆ;)V
    .locals 0

    iput-object p1, p0, Lﹶ/ʻٴ;->ﹳٴ:Lﹶ/ـˆ;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .prologue
    iget-object p2, p0, Lﹶ/ʻٴ;->ﹳٴ:Lﹶ/ـˆ;

    iget-object p2, p2, Lﹶ/ـˆ;->ʽ:Lﹶ/ʾᵎ;

    iget-object p2, p2, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lﹶ/ʻٴ;->ﹳٴ:Lﹶ/ـˆ;

    iget-object p1, p1, Lﹶ/ـˆ;->ʽ:Lﹶ/ʾᵎ;

    iget-object p2, p1, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz p2, :cond_1

    iget-boolean p1, p1, Lﹶ/ʾᵎ;->ᴵˑ:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lᐧﹳ/ʽ;->ʼᐧ()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶ/ʻٴ;->ﹳٴ:Lﹶ/ـˆ;

    iget-object v0, v0, Lﹶ/ـˆ;->ʽ:Lﹶ/ʾᵎ;

    iget-object v0, v0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lﹶ/ʻٴ;->ﹳٴ:Lﹶ/ـˆ;

    iget-object p1, p1, Lﹶ/ـˆ;->ʽ:Lﹶ/ʾᵎ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lﹶ/ʾᵎ;->ˈⁱ:Z

    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶ/ʻٴ;->ﹳٴ:Lﹶ/ـˆ;

    iget-object v0, v0, Lﹶ/ـˆ;->ʽ:Lﹶ/ʾᵎ;

    iget-object v0, v0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lﹶ/ʻٴ;->ﹳٴ:Lﹶ/ـˆ;

    iget-object p1, p1, Lﹶ/ـˆ;->ʽ:Lﹶ/ʾᵎ;

    iget-object v0, p1, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lﹶ/ʾᵎ;->ᴵˑ:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lᐧﹳ/ʽ;->ʼᐧ()V

    :cond_1
    :goto_0
    return-void
.end method

.class public abstract Lʼᵎ/ʽ;
.super Lcom/bumptech/glide/ˈ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/adservices/measurement/MeasurementManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᵎ/ʽ;->ʼˎ:Landroid/adservices/measurement/MeasurementManager;

    return-void
.end method

.method public static ʿᵢ(Lʼᵎ/ʽ;Lʼᵎ/ﾞᴵ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\u02bd;",
            "L\u02bc\u1d4e/\uff9e\u1d35;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lᴵי/ٴﹶ;

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ʻٴ()V

    iget-object p0, p0, Lʼᵎ/ʽ;->ʼˎ:Landroid/adservices/measurement/MeasurementManager;

    const/4 p0, 0x0

    throw p0
.end method

.method public static ˈⁱ(Lʼᵎ/ʽ;Landroid/net/Uri;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\u02bd;",
            "Landroid/net/Uri;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    new-instance v0, Lᴵי/ٴﹶ;

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʻٴ()V

    iget-object p0, p0, Lʼᵎ/ʽ;->ʼˎ:Landroid/adservices/measurement/MeasurementManager;

    new-instance p2, Lʼᐧ/ﹳٴ;

    invoke-direct {p2, v1}, Lʼᐧ/ﹳٴ;-><init>(I)V

    new-instance v1, Lˆﾞ/ﹳٴ;

    invoke-direct {v1, v0}, Lˆﾞ/ﹳٴ;-><init>(Lᴵי/ٴﹶ;)V

    invoke-virtual {p0, p1, p2, v1}, Landroid/adservices/measurement/MeasurementManager;->registerTrigger(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0
.end method

.method public static ˉـ(Lʼᵎ/ʽ;Lʼᵎ/ˑﹳ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\u02bd;",
            "L\u02bc\u1d4e/\u02d1\ufe73;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lᴵי/ٴﹶ;

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ʻٴ()V

    iget-object p0, p0, Lʼᵎ/ʽ;->ʼˎ:Landroid/adservices/measurement/MeasurementManager;

    const/4 p0, 0x0

    throw p0
.end method

.method public static ˊˋ(Lʼᵎ/ʽ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\u02bd;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lᴵי/ٴﹶ;

    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʻٴ()V

    iget-object p0, p0, Lʼᵎ/ʽ;->ʼˎ:Landroid/adservices/measurement/MeasurementManager;

    new-instance p1, Lʼᐧ/ﹳٴ;

    invoke-direct {p1, v1}, Lʼᐧ/ﹳٴ;-><init>(I)V

    new-instance v1, Lˆﾞ/ﹳٴ;

    invoke-direct {v1, v0}, Lˆﾞ/ﹳٴ;-><init>(Lᴵי/ٴﹶ;)V

    invoke-virtual {p0, p1, v1}, Landroid/adservices/measurement/MeasurementManager;->getMeasurementApiStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ˋᵔ(Lʼᵎ/ʽ;Lʼᵎ/ﹳٴ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\u02bd;",
            "L\u02bc\u1d4e/\ufe73\u0674;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lᴵי/ٴﹶ;

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ʻٴ()V

    iget-object p0, p0, Lʼᵎ/ʽ;->ʼˎ:Landroid/adservices/measurement/MeasurementManager;

    const/4 p0, 0x0

    throw p0
.end method

.method public static ـˏ(Lʼᵎ/ʽ;Landroid/net/Uri;Landroid/view/InputEvent;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\u02bd;",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    new-instance v0, Lᴵי/ٴﹶ;

    invoke-static {p3}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʻٴ()V

    iget-object p0, p0, Lʼᵎ/ʽ;->ʼˎ:Landroid/adservices/measurement/MeasurementManager;

    new-instance p3, Lʼᐧ/ﹳٴ;

    invoke-direct {p3, v1}, Lʼᐧ/ﹳٴ;-><init>(I)V

    new-instance v1, Lˆﾞ/ﹳٴ;

    invoke-direct {v1, v0}, Lˆﾞ/ﹳٴ;-><init>(Lᴵי/ٴﹶ;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/adservices/measurement/MeasurementManager;->registerSource(Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0
.end method

.method public static ﹳـ(Lʼᵎ/ʽ;Lʼᵎ/ˈ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\u02bd;",
            "L\u02bc\u1d4e/\u02c8;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    new-instance p1, Landroidx/lifecycle/ˉˆ;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p1, p0, v0, v1}, Landroidx/lifecycle/ˉˆ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    new-instance p0, Lˊʽ/ᵔﹳ;

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lˊʽ/ᵔﹳ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    const/4 p2, 0x1

    invoke-static {p0, p2, p0, p1}, Lﹳˋ/ʽʽ;->ˈٴ(Lˊʽ/ᵔﹳ;ZLˊʽ/ᵔﹳ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0
.end method


# virtual methods
.method public ʼˈ(Lʼᵎ/ˈ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\u02c8;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lʼᵎ/ʽ;->ﹳـ(Lʼᵎ/ʽ;Lʼᵎ/ˈ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ʿ(Lʼᵎ/ﾞᴵ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\uff9e\u1d35;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lʼᵎ/ʽ;->ʿᵢ(Lʼᵎ/ʽ;Lʼᵎ/ﾞᴵ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ˊʻ(Landroid/net/Uri;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lʼᵎ/ʽ;->ˈⁱ(Lʼᵎ/ʽ;Landroid/net/Uri;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ˑٴ(Lʼᵎ/ﹳٴ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\ufe73\u0674;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lʼᵎ/ʽ;->ˋᵔ(Lʼᵎ/ʽ;Lʼᵎ/ﹳٴ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public יـ(Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lʼᵎ/ʽ;->ˊˋ(Lʼᵎ/ʽ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ᴵˑ(Lʼᵎ/ˑﹳ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bc\u1d4e/\u02d1\ufe73;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lʼᵎ/ʽ;->ˉـ(Lʼᵎ/ʽ;Lʼᵎ/ˑﹳ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ᴵᵔ(Landroid/net/Uri;Landroid/view/InputEvent;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "L\u02c8\u05d9/\u02c8<",
            "-",
            "L\u02bb\u1d62/\u02bc\u1427;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lʼᵎ/ʽ;->ـˏ(Lʼᵎ/ʽ;Landroid/net/Uri;Landroid/view/InputEvent;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

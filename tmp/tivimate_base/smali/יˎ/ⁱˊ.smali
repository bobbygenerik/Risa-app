.class public final Lיˎ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lיˎ/ʽ;


# instance fields
.field public final ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

.field public final ﹳٴ:Lˏ/ˉʿ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lיˎ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lיˎ/ⁱˊ;->ʽ:Lיˎ/ʽ;

    return-void
.end method

.method public constructor <init>(Lˏ/ˉʿ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lיˎ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lיˎ/ⁱˊ;->ﹳٴ:Lˏ/ˉʿ;

    new-instance v0, Lʻʿ/ˈ;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lˏ/ˉʿ;->ﹳٴ(Lʾﹳ/ﹳٴ;)V

    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lיˎ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lיˎ/ⁱˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lיˎ/ⁱˊ;->ʽ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˈ(Ljava/lang/String;JLˈˋ/ﹳﹳ;)V
    .locals 3

    .prologue
    const-string v0, "Deferring native open session: "

    invoke-static {v0, p1}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    nop

    :cond_0
    new-instance v0, Lיˎ/ﹳٴ;

    invoke-direct {v0, p1, p2, p3, p4}, Lיˎ/ﹳٴ;-><init>(Ljava/lang/String;JLˈˋ/ﹳﹳ;)V

    iget-object p1, p0, Lיˎ/ⁱˊ;->ﹳٴ:Lˏ/ˉʿ;

    invoke-virtual {p1, v0}, Lˏ/ˉʿ;->ﹳٴ(Lʾﹳ/ﹳٴ;)V

    return-void
.end method

.method public final ⁱˊ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lיˎ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lיˎ/ⁱˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lיˎ/ⁱˊ;->ⁱˊ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ(Ljava/lang/String;)Lיˎ/ʽ;
    .locals 1

    .prologue
    iget-object v0, p0, Lיˎ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lיˎ/ⁱˊ;

    if-nez v0, :cond_0

    sget-object p1, Lיˎ/ⁱˊ;->ʽ:Lיˎ/ʽ;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lיˎ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lיˎ/ʽ;

    move-result-object p1

    return-object p1
.end method

.class public final Lˆˆ/ʽ;
.super Lᵢʾ/ʽ;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Lˑʼ/ᵎˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lᵔﹶ/ᵔʾ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lᵔﹶ/ᵔʾ;-><init>(I)V

    new-instance v1, Lˆˆ/ⁱˊ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lˑʼ/ᵎˊ;

    invoke-direct {v2, v1, v0}, Lˑʼ/ᵎˊ;-><init>(Lˆˆ/ⁱˊ;Lᵔﹶ/ᵔʾ;)V

    sput-object v2, Lˆˆ/ʽ;->ʼˎ:Lˑʼ/ᵎˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lٴﾞ/ﾞʻ;)Lˏـ/ˉʿ;
    .locals 5

    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lᐧﹳ/ʽ;-><init>(IZ)V

    const/4 v1, 0x1

    new-array v1, v1, [Lᴵˈ/ˈ;

    sget-object v3, Lᵢˆ/ⁱˊ;->ﹳٴ:Lᴵˈ/ˈ;

    aput-object v3, v1, v2

    new-instance v3, Landroidx/leanback/widget/ˉˆ;

    const/16 v4, 0x12

    invoke-direct {v3, v4, p1}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v3, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Lٴʽ/יـ;

    invoke-direct {p1, v0, v1, v2}, Lٴʽ/יـ;-><init>(Lᐧﹳ/ʽ;[Lᴵˈ/ˈ;Z)V

    new-instance v0, Lˏـ/ᵎﹶ;

    invoke-direct {v0}, Lˏـ/ᵎﹶ;-><init>()V

    iget-object v1, p0, Lᵢʾ/ʽ;->ᵔᵢ:Lﹳˊ/ˈ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lﹳˊ/ᵔﹳ;

    iget-object v3, p0, Lᵢʾ/ʽ;->ᵎﹶ:Lᵔﹶ/ᴵˊ;

    invoke-direct {v2, p1, v0, v3}, Lﹳˊ/ᵔﹳ;-><init>(Lٴʽ/יـ;Lˏـ/ᵎﹶ;Lᵔﹶ/ᴵˊ;)V

    iget-object p1, v1, Lﹳˊ/ˈ;->ᵎⁱ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Lﹳˊ/ˉˆ;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {v3, v2, p1, p0}, Lﹳˊ/ˉˆ;-><init>(Lﹳˊ/ᵔﹳ;ILˆˆ/ʽ;)V

    iget-object p1, v1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, v0, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    return-object p1
.end method

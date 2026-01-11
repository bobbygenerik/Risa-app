.class public final Lᴵי/ٴﹳ;
.super Lᴵי/ˏי;
.source "SourceFile"


# static fields
.field public static final ᴵˊ:Lᴵי/ٴﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᴵי/ٴﹳ;

    invoke-direct {v0}, Lᴵי/ˏי;-><init>()V

    sput-object v0, Lᴵי/ٴﹳ;->ᴵˊ:Lᴵי/ٴﹳ;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method

.method public final ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    sget-object p2, Lᴵי/ᐧﹶ;->ʽʽ:Lᴵי/ʽﹳ;

    invoke-interface {p1, p2}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    check-cast p1, Lᴵי/ᐧﹶ;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lᴵי/ᐧﹶ;->ᴵˊ:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

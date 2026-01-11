.class public final Lˎᐧ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lᴵי/ـˆ;


# instance fields
.field public final ʾˋ:Lˈי/ᵔᵢ;


# direct methods
.method public constructor <init>(Lˈי/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᐧ/ﹳٴ;->ʾˋ:Lˈי/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    sget-object v0, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    iget-object v1, p0, Lˎᐧ/ﹳٴ;->ʾˋ:Lˈי/ᵔᵢ;

    invoke-interface {v1, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᴵי/ᴵˑ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public final ʾˋ()Lˈי/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lˎᐧ/ﹳٴ;->ʾˋ:Lˈי/ᵔᵢ;

    return-object v0
.end method

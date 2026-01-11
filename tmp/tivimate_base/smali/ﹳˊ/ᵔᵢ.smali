.class public final Lﹳˊ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳˊ/ⁱˊ;


# instance fields
.field public final synthetic ﹳٴ:Lﹳˊ/ˈ;


# direct methods
.method public constructor <init>(Lﹳˊ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˊ/ᵔᵢ;->ﹳٴ:Lﹳˊ/ˈ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Z)V
    .locals 2

    iget-object v0, p0, Lﹳˊ/ᵔᵢ;->ﹳٴ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

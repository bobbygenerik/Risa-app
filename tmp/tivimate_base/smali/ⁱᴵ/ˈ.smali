.class public final Lⁱᴵ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱᴵ/ٴﹶ;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Lⁱᴵ/ʼˎ;

.field public final synthetic ˈٴ:Lⁱᴵ/ˑﹳ;

.field public ᴵˊ:Lⁱᴵ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lⁱᴵ/ˑﹳ;Lⁱᴵ/ʼˎ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱᴵ/ˈ;->ˈٴ:Lⁱᴵ/ˑﹳ;

    iput-object p2, p0, Lⁱᴵ/ˈ;->ʾˋ:Lⁱᴵ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 3

    iget-object v0, p0, Lⁱᴵ/ˈ;->ˈٴ:Lⁱᴵ/ˑﹳ;

    iget-object v0, v0, Lⁱᴵ/ˑﹳ;->ʼˈ:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lٴˉ/ⁱˊ;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ᴵˑ(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

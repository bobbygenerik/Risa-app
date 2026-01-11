.class public final Lٴʽ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic ʾˋ:Landroid/view/View;

.field public final synthetic ᴵˊ:Lٴʽ/ˑﹳ;


# direct methods
.method public constructor <init>(Lٴʽ/ˑﹳ;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴʽ/ˈ;->ᴵˊ:Lٴʽ/ˑﹳ;

    iput-object p2, p0, Lٴʽ/ˈ;->ʾˋ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    new-instance v0, Lˋˋ/ˈ;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1, p0}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {}, Lʿٴ/ᵔʾ;->ﾞᴵ()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

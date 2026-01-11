.class public final Lٴʽ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʽ/ʼˎ;


# instance fields
.field public final synthetic ʾˋ:Landroidx/lifecycle/ـˆ;

.field public final synthetic ᴵˊ:Lˑʼ/ᵎˊ;


# direct methods
.method public constructor <init>(Lˑʼ/ᵎˊ;Landroidx/lifecycle/ـˆ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴʽ/ˆʾ;->ᴵˊ:Lˑʼ/ᵎˊ;

    iput-object p2, p0, Lٴʽ/ˆʾ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 0

    return-void
.end method

.method public final ˆʾ()V
    .locals 0

    return-void
.end method

.method public final ٴﹶ()V
    .locals 2

    iget-object v0, p0, Lٴʽ/ˆʾ;->ᴵˊ:Lˑʼ/ᵎˊ;

    iget-object v0, v0, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lٴʽ/ˆʾ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

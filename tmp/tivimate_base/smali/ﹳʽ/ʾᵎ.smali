.class public final Lﹳʽ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic ʾˋ:Ljava/util/List;

.field public final synthetic ᴵˊ:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ʾᵎ;->ʾˋ:Ljava/util/List;

    iput-object p2, p0, Lﹳʽ/ʾᵎ;->ᴵˊ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lˉᵔ/ﹳٴ;

    iget-object v1, p0, Lﹳʽ/ʾᵎ;->ʾˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lﹳʽ/ʾᵎ;->ᴵˊ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lˉᵔ/ﹳٴ;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

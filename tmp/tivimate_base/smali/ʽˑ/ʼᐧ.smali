.class public abstract Lʽˑ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˋ/ﹳٴ;


# instance fields
.field public final ʽ:Z

.field public final ⁱˊ:Ljava/util/List;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˑ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ʼᐧ;->ⁱˊ:Ljava/util/List;

    iput-boolean p3, p0, Lʽˑ/ʼᐧ;->ʽ:Z

    return-void
.end method

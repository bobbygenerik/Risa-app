.class public final Lʿʾ/ʽ;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public ʽ:Lʿʾ/ᵢˏ;

.field public final ⁱˊ:Z

.field public final ﹳٴ:Lʼᵔ/ˑﹳ;


# direct methods
.method public constructor <init>(Lʼᵔ/ˑﹳ;Lʿʾ/ʽﹳ;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    invoke-static {p1, p3}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lʿʾ/ʽ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    iget-boolean p1, p2, Lʿʾ/ʽﹳ;->ʾˋ:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lʿʾ/ʽ;->ʽ:Lʿʾ/ᵢˏ;

    iput-boolean p1, p0, Lʿʾ/ʽ;->ⁱˊ:Z

    return-void
.end method

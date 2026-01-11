.class public interface abstract annotation Lˉʼ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lˉʼ/ʽ;
        condition = ""
        delivery = .enum Lˉʼ/ˑﹳ;->ʾˋ:Lˉʼ/ˑﹳ;
        enabled = true
        filters = {}
        invocation = Lˆˏ/ᵔᵢ;
        priority = 0x0
        rejectSubtypes = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract condition()Ljava/lang/String;
.end method

.method public abstract delivery()Lˉʼ/ˑﹳ;
.end method

.method public abstract enabled()Z
.end method

.method public abstract filters()[Lˉʼ/ⁱˊ;
.end method

.method public abstract invocation()Ljava/lang/Class;
.end method

.method public abstract priority()I
.end method

.method public abstract rejectSubtypes()Z
.end method
